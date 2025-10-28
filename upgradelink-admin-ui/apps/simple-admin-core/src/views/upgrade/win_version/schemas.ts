import type { VbenFormProps } from "@vben/common-ui";

import type { VxeGridProps } from "#/adapter/vxe-table";

import { $t } from "@vben/locales";

import { getUpgradeWinList } from "#/api/upgrade/upgradeWin";

export const tableColumns: VxeGridProps = {
  columns: [
    {
      type: "checkbox",
      width: 60,
    },
    {
      title: $t("upgrade.upgradeWin.name"),
      field: "winName",
    },
    {
      title: $t("upgrade.upgradeWinVersion.cloudFileName"),
      field: "cloudFileName",
    },
    {
      title: $t("upgrade.upgradeWinVersion.versionName"),
      field: "versionName",
    },
    {
      title: $t("upgrade.upgradeWinVersion.versionCode"),
      field: "versionCode",
    },
    {
      title: $t("upgrade.upgradeWinVersion.arch"),
      field: "arch",
    },
    {
      title: $t("upgrade.upgradeWinVersion.versionFileSize"),
      field: "versionFileSize",
    },
    {
      title: $t("upgrade.upgradeWinVersion.description"),
      field: "description",
    },
    {
      title: $t("upgrade.upgradeWinVersion.createAt"),
      field: "createAt",
      formatter: "formatDateTime",
    },
    {
      title: $t("upgrade.upgradeWinVersion.updateAt"),
      field: "updateAt",
      formatter: "formatDateTime",
    },
  ],
};

export const searchFormSchemas: VbenFormProps = {
  schema: [
    {
      fieldName: "winId",
      label: $t("upgrade.upgradeWin.name"),
      component: "ApiSelect",
      componentProps: {
        api: getUpgradeWinList,
        params: {
          page: 1,
          pageSize: 1000,
          name: "",
        },
        resultField: "data.data",
        labelField: "name",
        valueField: "id",
        multiple: false,
      },
    },
    {
      fieldName: "versionName",
      label: $t("upgrade.upgradeWinVersion.versionName"),
      component: "Input",
    },
    {
      fieldName: "versionCode",
      label: $t("upgrade.upgradeWinVersion.versionCode"),
      component: "InputNumber",
    },
  ],
};

export const dataFormSchemas: VbenFormProps = {
  schema: [
    {
      fieldName: "id",
      label: "ID",
      component: "Input",
      dependencies: {
        show: false,
        triggerFields: ["id"],
      },
    },
    {
      fieldName: "winId",
      label: $t("upgrade.upgradeWin.name"),
      component: "ApiSelect",
      rules: "required",
      componentProps: {
        api: getUpgradeWinList,
        params: {
          page: 1,
          pageSize: 1000,
          name: "",
        },
        resultField: "data.data",
        labelField: "name",
        valueField: "id",
        multiple: false,
      },
    },
    {
      fieldName: "cloudFileName",
      label: $t("upgrade.upgradeWinVersion.cloudFileName"),
      component: "Input",
      dependencies: {
        disabled(values) {
          return !!values.id;
        },
        show: (values) => values.id,
        triggerFields: ["id"],
      },
    },
    {
      fieldName: "cloudFileId",
      label: $t("upgrade.upgradeWinVersion.versionFile"),
      component: "UploadDraggerOne",
      rules: "required",
      componentProps: {
        multiple: false,
        provider: "cloud-default",
      },
      dependencies: {
        show: (values) => !values.id,
        triggerFields: ["id"],
      },
    },
    {
      fieldName: "versionName",
      label: $t("upgrade.upgradeWinVersion.versionName"),
      component: "Input",
      rules: "required",
    },
    {
      fieldName: "versionCode",
      label: $t("upgrade.upgradeWinVersion.versionCode"),
      component: "InputNumber",
      rules: "required",
      dependencies: {
        disabled(values) {
          return !!values.id;
        },
        triggerFields: ["id"],
      },
    },
    {
      fieldName: "arch",
      label: $t("upgrade.upgradeMacVersion.arch"),
      rules: "required",
      component: "Select",
      componentProps: {
        allowClear: true,
        filterOption: true,
        options: [
          {
            label: "x64",
            value: "x64",
          },
          {
            label: "arm64",
            value: "arm64",
          },
        ],
        placeholder: "请选择",
        showSearch: true,
      },
    },
    {
      fieldName: "description",
      label: $t("upgrade.upgradeWinVersion.description"),
      component: "Textarea",
      componentProps: {
        autoSize: { minRows: 10 }, // 自动调整高度（可选）
        // showCount: true, // 显示字数统计（可选）
      },
    },
  ],
};
