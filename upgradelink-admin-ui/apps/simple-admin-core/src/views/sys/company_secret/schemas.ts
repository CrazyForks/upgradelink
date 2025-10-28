import type { VbenFormProps } from "@vben/common-ui";

import type { VxeGridProps } from "#/adapter/vxe-table";

import { z } from "@vben/common-ui";
import { $t } from "@vben/locales";

export const tableColumns: VxeGridProps = {
  columns: [
    {
      type: "checkbox",
      width: 60,
    },

    {
      title: $t("sys.companySecret.accessKey"),
      field: "accessKey",
    },
    {
      title: $t("sys.companySecret.secretKey"),
      field: "secretKey",
    },
    {
      title: $t("sys.companySecret.enable"),
      field: "enable",
      slots: {
        default: (e) => {
          switch (e.row.enable) {
            case 1: {
              return $t("common.yes");
            }
            default: {
              return $t("common.no");
            }
          }
        },
      },
    },
    {
      title: $t("sys.companySecret.description"),
      field: "description",
    },

    {
      title: $t("common.createTime"),
      field: "createdAt",
      formatter: "formatDateTime",
    },
  ],
};

export const searchFormSchemas: VbenFormProps = {
  schema: [
    {
      fieldName: "name",
      label: $t("sys.companySecret.accessKey"),
      component: "Input",
    },
    {
      fieldName: "name",
      label: $t("sys.companySecret.secretKey"),
      component: "Input",
    },
    {
      fieldName: "enable",
      label: $t("sys.companySecret.enable"),
      component: "Select",
      componentProps: {
        options: [
          { label: $t("common.no"), value: 0 },
          { label: $t("common.yes"), value: 1 },
        ],
      },
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
      fieldName: "enable",
      label: $t("sys.companySecret.enable"),
      component: "RadioButtonGroup",
      rules: "required",
      defaultValue: 1,
      componentProps: {
        options: [
          { label: $t("common.yes"), value: 1 },
          { label: $t("common.no"), value: 0 },
        ],
      },
    },
    {
      fieldName: "description",
      label: $t("sys.companySecret.description"),
      component: "Textarea",
      componentProps: {
        autoSize: { minRows: 5 }, // 自动调整高度（可选）
      },
      rules: z.string().default("").optional(),
    },
  ],
};
