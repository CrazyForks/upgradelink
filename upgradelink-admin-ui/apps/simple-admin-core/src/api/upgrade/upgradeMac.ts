import type {
  UpgradeMacInfo,
  UpgradeMacListResp,
} from "./model/upgradeMacModel";

import type {
  BaseDataResp,
  BaseIDReq,
  BaseIDsReq,
  BaseListReq,
  BaseResp,
} from "#/api/model/baseModel";

import { requestClient } from "#/api/request";

enum Api {
  CreateUpgradeMac = "/upgrade/upgrade_mac/create",
  DeleteUpgradeMac = "/upgrade/upgrade_mac/delete",
  GetUpgradeMacById = "/upgrade/upgrade_mac",
  GetUpgradeMacList = "/upgrade/upgrade_mac/list",
  UpdateUpgradeMac = "/upgrade/upgrade_mac/update",
}

/**
 * @description: Get upgrade mac list
 */

export const getUpgradeMacList = (params: BaseListReq) => {
  return requestClient.post<BaseDataResp<UpgradeMacListResp>>(
    Api.GetUpgradeMacList,
    params,
  );
};

/**
 *  @description: Create a new upgrade mac
 */
export const createUpgradeMac = (params: UpgradeMacInfo) => {
  return requestClient.post<BaseResp>(Api.CreateUpgradeMac, params);
};

/**
 *  @description: Update the upgrade mac
 */
export const updateUpgradeMac = (params: UpgradeMacInfo) => {
  return requestClient.post<BaseResp>(Api.UpdateUpgradeMac, params);
};

/**
 *  @description: Delete upgrade macs
 */
export const deleteUpgradeMac = (params: BaseIDsReq) => {
  return requestClient.post<BaseResp>(Api.DeleteUpgradeMac, params);
};

/**
 *  @description: Get upgrade mac By ID
 */
export const getUpgradeMacById = (params: BaseIDReq) => {
  return requestClient.post<BaseDataResp<UpgradeMacInfo>>(
    Api.GetUpgradeMacById,
    params,
  );
};
