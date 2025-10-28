import type { VbenFormProps } from "@vben/common-ui";

import type { VxeGridProps } from "#/adapter/vxe-table";

import { $t } from "@vben/locales";

import { getUpgradeLnxList } from "#/api/upgrade/upgradeLnx";

export const tableColumns: VxeGridProps = {
  columns: [
    {
      type: "checkbox",
      width: 60,
    },
    {
      title: $t("upgrade.upgradeLnx.name"),
      field: "lnxName",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.cloudFileName"),
      field: "cloudFileName",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.versionName"),
      field: "versionName",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.versionCode"),
      field: "versionCode",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.arch"),
      field: "arch",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.versionFileSize"),
      field: "versionFileSize",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.description"),
      field: "description",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.createAt"),
      field: "createAt",
      formatter: "formatDateTime",
    },
    {
      title: $t("upgrade.upgradeLnxVersion.updateAt"),
      field: "updateAt",
      formatter: "formatDateTime",
    },
  ],
};

export const searchFormSchemas: VbenFormProps = {
  schema: [
    {
      fieldName: "lnxId",
      label: $t("upgrade.upgradeLnx.name"),
      component: "ApiSelect",
      componentProps: {
        api: getUpgradeLnxList,
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
      label: $t("upgrade.upgradeLnxVersion.versionName"),
      component: "Input",
    },
    {
      fieldName: "versionCode",
      label: $t("upgrade.upgradeLnxVersion.versionCode"),
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
      fieldName: "lnxId",
      label: $t("upgrade.upgradeLnx.name"),
      component: "ApiSelect",
      rules: "required",
      componentProps: {
        api: getUpgradeLnxList,
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
      label: $t("upgrade.upgradeLnxVersion.cloudFileName"),
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
      label: $t("upgrade.upgradeLnxVersion.versionFile"),
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
      label: $t("upgrade.upgradeLnxVersion.versionName"),
      component: "Input",
      rules: "required",
    },
    {
      fieldName: "versionCode",
      label: $t("upgrade.upgradeLnxVersion.versionCode"),
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
      label: $t("upgrade.upgradeLnxVersion.arch"),
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
      label: $t("upgrade.upgradeLnxVersion.description"),
      component: "Textarea",
      componentProps: {
        autoSize: { minRows: 10 }, // 自动调整高度（可选）
        // showCount: true, // 显示字数统计（可选）
      },
    },
  ],
};
