import type { VbenFormProps } from "@vben/common-ui";

import type { VxeGridProps } from "#/adapter/vxe-table";

import { $t } from "@vben/locales";

import { getUpgradeMacList } from "#/api/upgrade/upgradeMac";

export const tableColumns: VxeGridProps = {
  columns: [
    {
      type: "checkbox",
      width: 60,
    },
    {
      title: $t("upgrade.upgradeMac.name"),
      field: "macName",
    },
    {
      title: $t("upgrade.upgradeMacVersion.cloudFileName"),
      field: "cloudFileName",
    },
    {
      title: $t("upgrade.upgradeMacVersion.versionName"),
      field: "versionName",
    },
    {
      title: $t("upgrade.upgradeMacVersion.versionCode"),
      field: "versionCode",
    },
    {
      title: $t("upgrade.upgradeMacVersion.arch"),
      field: "arch",
    },
    {
      title: $t("upgrade.upgradeMacVersion.versionFileSize"),
      field: "versionFileSize",
    },
    {
      title: $t("upgrade.upgradeMacVersion.description"),
      field: "description",
    },
    {
      title: $t("upgrade.upgradeMacVersion.createAt"),
      field: "createAt",
      formatter: "formatDateTime",
    },
    {
      title: $t("upgrade.upgradeMacVersion.updateAt"),
      field: "updateAt",
      formatter: "formatDateTime",
    },
  ],
};

export const searchFormSchemas: VbenFormProps = {
  schema: [
    {
      fieldName: "macId",
      label: $t("upgrade.upgradeMac.name"),
      component: "ApiSelect",
      componentProps: {
        api: getUpgradeMacList,
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
      label: $t("upgrade.upgradeMacVersion.versionName"),
      component: "Input",
    },
    {
      fieldName: "versionCode",
      label: $t("upgrade.upgradeMacVersion.versionCode"),
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
      fieldName: "macId",
      label: $t("upgrade.upgradeMac.name"),
      component: "ApiSelect",
      rules: "required",
      componentProps: {
        api: getUpgradeMacList,
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
      label: $t("upgrade.upgradeMacVersion.cloudFileName"),
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
      label: $t("upgrade.upgradeMacVersion.versionFile"),
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
      label: $t("upgrade.upgradeMacVersion.versionName"),
      component: "Input",
      rules: "required",
    },
    {
      fieldName: "versionCode",
      label: $t("upgrade.upgradeMacVersion.versionCode"),
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
      label: $t("upgrade.upgradeMacVersion.description"),
      component: "Textarea",
      componentProps: {
        autoSize: { minRows: 10 }, // 自动调整高度（可选）
        // showCount: true, // 显示字数统计（可选）
      },
    },
  ],
};
