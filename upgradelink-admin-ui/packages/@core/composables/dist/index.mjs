import { useBreakpoints, breakpointsTailwind, useCssVar, useDebounceFn, useScrollLock as useScrollLock$1, tryOnMounted, tryOnBeforeUnmount, createSharedComposable } from '@vueuse/core';
import { ref, computed, onMounted, onUnmounted, getCurrentInstance, useSlots, useAttrs, unref } from 'vue';
import { CSS_VARIABLE_LAYOUT_CONTENT_HEIGHT, CSS_VARIABLE_LAYOUT_CONTENT_WIDTH, CSS_VARIABLE_LAYOUT_HEADER_HEIGHT, CSS_VARIABLE_LAYOUT_FOOTER_HEIGHT, DEFAULT_NAMESPACE } from '@vben-core/shared/constants';
import { getElementVisibleRect, kebabToCamelCase, getFirstNonNullOrUndefined, getScrollbarWidth, needsScrollbar } from '@vben-core/shared/utils';
export { useEmitAsProps, useForwardExpose, useForwardProps, useForwardPropsEmits } from 'reka-ui';

function useIsMobile() {
  const breakpoints = useBreakpoints(breakpointsTailwind);
  const isMobile = breakpoints.smaller("md");
  return { isMobile };
}

function useLayoutContentStyle() {
  let resizeObserver = null;
  const contentElement = ref(null);
  const visibleDomRect = ref(null);
  const contentHeight = useCssVar(CSS_VARIABLE_LAYOUT_CONTENT_HEIGHT);
  const contentWidth = useCssVar(CSS_VARIABLE_LAYOUT_CONTENT_WIDTH);
  const overlayStyle = computed(() => {
    const { height, left, top, width } = visibleDomRect.value ?? {};
    return {
      height: `${height}px`,
      left: `${left}px`,
      position: "fixed",
      top: `${top}px`,
      width: `${width}px`,
      zIndex: 150
    };
  });
  const debouncedCalcHeight = useDebounceFn(
    (_entries) => {
      visibleDomRect.value = getElementVisibleRect(contentElement.value);
      contentHeight.value = `${visibleDomRect.value.height}px`;
      contentWidth.value = `${visibleDomRect.value.width}px`;
    },
    16
  );
  onMounted(() => {
    if (contentElement.value && !resizeObserver) {
      resizeObserver = new ResizeObserver(debouncedCalcHeight);
      resizeObserver.observe(contentElement.value);
    }
  });
  onUnmounted(() => {
    resizeObserver?.disconnect();
    resizeObserver = null;
  });
  return { contentElement, overlayStyle, visibleDomRect };
}
function useLayoutHeaderStyle() {
  const headerHeight = useCssVar(CSS_VARIABLE_LAYOUT_HEADER_HEIGHT);
  return {
    getLayoutHeaderHeight: () => {
      return Number.parseInt(`${headerHeight.value}`, 10);
    },
    setLayoutHeaderHeight: (height) => {
      headerHeight.value = `${height}px`;
    }
  };
}
function useLayoutFooterStyle() {
  const footerHeight = useCssVar(CSS_VARIABLE_LAYOUT_FOOTER_HEIGHT);
  return {
    getLayoutFooterHeight: () => {
      return Number.parseInt(`${footerHeight.value}`, 10);
    },
    setLayoutFooterHeight: (height) => {
      footerHeight.value = `${height}px`;
    }
  };
}

const statePrefix = "is-";
const _bem = (namespace, block, blockSuffix, element, modifier) => {
  let cls = `${namespace}-${block}`;
  if (blockSuffix) {
    cls += `-${blockSuffix}`;
  }
  if (element) {
    cls += `__${element}`;
  }
  if (modifier) {
    cls += `--${modifier}`;
  }
  return cls;
};
const is = (name, ...args) => {
  const state = args.length > 0 ? args[0] : true;
  return name && state ? `${statePrefix}${name}` : "";
};
const useNamespace = (block) => {
  const namespace = DEFAULT_NAMESPACE;
  const b = (blockSuffix = "") => _bem(namespace, block, blockSuffix, "", "");
  const e = (element) => element ? _bem(namespace, block, "", element, "") : "";
  const m = (modifier) => modifier ? _bem(namespace, block, "", "", modifier) : "";
  const be = (blockSuffix, element) => blockSuffix && element ? _bem(namespace, block, blockSuffix, element, "") : "";
  const em = (element, modifier) => element && modifier ? _bem(namespace, block, "", element, modifier) : "";
  const bm = (blockSuffix, modifier) => blockSuffix && modifier ? _bem(namespace, block, blockSuffix, "", modifier) : "";
  const bem = (blockSuffix, element, modifier) => blockSuffix && element && modifier ? _bem(namespace, block, blockSuffix, element, modifier) : "";
  const cssVar = (object) => {
    const styles = {};
    for (const key in object) {
      if (object[key]) {
        styles[`--${namespace}-${key}`] = object[key];
      }
    }
    return styles;
  };
  const cssVarBlock = (object) => {
    const styles = {};
    for (const key in object) {
      if (object[key]) {
        styles[`--${namespace}-${block}-${key}`] = object[key];
      }
    }
    return styles;
  };
  const cssVarName = (name) => `--${namespace}-${name}`;
  const cssVarBlockName = (name) => `--${namespace}-${block}-${name}`;
  return {
    b,
    be,
    bem,
    bm,
    // css
    cssVar,
    cssVarBlock,
    cssVarBlockName,
    cssVarName,
    e,
    em,
    is,
    m,
    namespace
  };
};

function usePriorityValue(key, props, state) {
  const instance = getCurrentInstance();
  const slots = useSlots();
  const attrs = useAttrs();
  const value = computed(() => {
    const rawProps = instance?.vnode?.props || {};
    const standardRawProps = {};
    for (const [key2, value2] of Object.entries(rawProps)) {
      standardRawProps[kebabToCamelCase(key2)] = value2;
    }
    const propsKey = standardRawProps?.[key] === void 0 ? void 0 : props[key];
    return getFirstNonNullOrUndefined(
      slots[key],
      attrs[key],
      propsKey,
      state?.value?.[key]
    );
  });
  return value;
}
function usePriorityValues(props, state) {
  const result = {};
  Object.keys(props).forEach((key) => {
    result[key] = usePriorityValue(key, props, state);
  });
  return result;
}
function useForwardPriorityValues(props, state) {
  const computedResult = {};
  Object.keys(props).forEach((key) => {
    computedResult[key] = usePriorityValue(
      key,
      props,
      state
    );
  });
  return computed(() => {
    const unwrapResult = {};
    Object.keys(props).forEach((key) => {
      unwrapResult[key] = unref(computedResult[key]);
    });
    return unwrapResult;
  });
}

const SCROLL_FIXED_CLASS = `_scroll__fixed_`;
function useScrollLock() {
  const isLocked = useScrollLock$1(document.body);
  const scrollbarWidth = getScrollbarWidth();
  tryOnMounted(() => {
    if (!needsScrollbar()) {
      return;
    }
    document.body.style.paddingRight = `${scrollbarWidth}px`;
    const layoutFixedNodes = document.querySelectorAll(
      `.${SCROLL_FIXED_CLASS}`
    );
    const nodes = [...layoutFixedNodes];
    if (nodes.length > 0) {
      nodes.forEach((node) => {
        node.dataset.transition = node.style.transition;
        node.style.transition = "none";
        node.style.paddingRight = `${scrollbarWidth}px`;
      });
    }
    isLocked.value = true;
  });
  tryOnBeforeUnmount(() => {
    if (!needsScrollbar()) {
      return;
    }
    isLocked.value = false;
    const layoutFixedNodes = document.querySelectorAll(
      `.${SCROLL_FIXED_CLASS}`
    );
    const nodes = [...layoutFixedNodes];
    if (nodes.length > 0) {
      nodes.forEach((node) => {
        node.style.paddingRight = "";
        requestAnimationFrame(() => {
          node.style.transition = node.dataset.transition || "";
        });
      });
    }
    document.body.style.paddingRight = "";
  });
}

const messages = {
  "en-US": {
    cancel: "Cancel",
    collapse: "Collapse",
    confirm: "Confirm",
    expand: "Expand",
    prompt: "Prompt",
    reset: "Reset",
    submit: "Submit"
  },
  "zh-CN": {
    cancel: "\u53D6\u6D88",
    collapse: "\u6536\u8D77",
    confirm: "\u786E\u8BA4",
    expand: "\u5C55\u5F00",
    prompt: "\u63D0\u793A",
    reset: "\u91CD\u7F6E",
    submit: "\u63D0\u4EA4"
  },
  "ja-JP": {
    cancel: "\u30AD\u30E3\u30F3\u30BB\u30EB",
    collapse: "\u6298\u308A\u305F\u305F\u3080",
    confirm: "\u78BA\u8A8D",
    expand: "\u5C55\u958B",
    prompt: "\u30D7\u30ED\u30F3\u30D7\u30C8",
    reset: "\u30EA\u30BB\u30C3\u30C8",
    submit: "\u9001\u4FE1"
  },
  "pt-BR": {
    cancel: "Cancelar",
    collapse: "Recolher",
    confirm: "Confirmar",
    expand: "Expandir",
    prompt: "Prompt",
    reset: "Redefinir",
    submit: "Enviar"
  },
  "ru-RU": {
    cancel: "\u041E\u0442\u043C\u0435\u043D\u0438\u0442\u044C",
    collapse: "\u0421\u0432\u0435\u0440\u043D\u0443\u0442\u044C",
    confirm: "\u041F\u043E\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044C",
    expand: "\u0420\u0430\u0437\u0432\u0435\u0440\u043D\u0443\u0442\u044C",
    prompt: "\u041F\u043E\u0434\u0441\u043A\u0430\u0437\u043A\u0430",
    reset: "\u0421\u0431\u0440\u043E\u0441\u0438\u0442\u044C",
    submit: "\u041E\u0442\u043F\u0440\u0430\u0432\u0438\u0442\u044C"
  },
  "es-ES": {
    cancel: "Cancelar",
    collapse: "Colapsar",
    confirm: "Confirmar",
    expand: "Expandir",
    prompt: "Prompt",
    reset: "Restablecer",
    submit: "Enviar"
  },
  "ko-KR": {
    cancel: "\uCDE8\uC18C",
    collapse: "\uC811\uAE30",
    confirm: "\uD655\uC778",
    expand: "\uD3BC\uCE58\uAE30",
    prompt: "\uD504\uB86C\uD504\uD2B8",
    reset: "\uCD08\uAE30\uD654",
    submit: "\uC81C\uCD9C"
  },
  "fa-IR": {
    cancel: "\u0644\u063A\u0648",
    collapse: "\u0628\u0633\u062A\u0646",
    confirm: "\u062A\u0627\u06CC\u06CC\u062F",
    expand: "\u0628\u0627\u0632 \u06A9\u0631\u062F\u0646",
    prompt: "\u067E\u06CC\u0627\u0645",
    reset: "\u0631\u06CC\u0633\u062A",
    submit: "\u0627\u0631\u0633\u0627\u0644"
  }
};
const getMessages = (locale) => messages[locale] || messages["en-US"];

const useSimpleLocale = createSharedComposable(() => {
  const currentLocale = ref("zh-CN");
  const setSimpleLocale = (locale) => {
    currentLocale.value = locale;
  };
  const $t = computed(() => {
    const localeMessages = getMessages(currentLocale.value);
    return (key) => {
      return localeMessages[key] || key;
    };
  });
  return {
    $t,
    currentLocale,
    setSimpleLocale
  };
});

function useSortable(sortableContainer, options = {}) {
  const initializeSortable = async () => {
    const Sortable = await import(
      // @ts-expect-error - This is a dynamic import
      'sortablejs/modular/sortable.complete.esm.js'
    );
    const sortable = Sortable?.default?.create?.(sortableContainer, {
      animation: 300,
      delay: 400,
      delayOnTouchOnly: true,
      ...options
    });
    return sortable;
  };
  return {
    initializeSortable
  };
}

export { SCROLL_FIXED_CLASS, useForwardPriorityValues, useIsMobile, useLayoutContentStyle, useLayoutFooterStyle, useLayoutHeaderStyle, useNamespace, usePriorityValue, usePriorityValues, useScrollLock, useSimpleLocale, useSortable };
