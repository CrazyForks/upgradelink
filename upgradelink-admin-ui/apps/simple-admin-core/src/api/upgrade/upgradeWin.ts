import type {
  UpgradeWinInfo,
  UpgradeWinListResp,
} from "./model/upgradeWinModel";

import type {
  BaseDataResp,
  BaseIDReq,
  BaseIDsReq,
  BaseListReq,
  BaseResp,
} from "#/api/model/baseModel";

import { requestClient } from "#/api/request";

enum Api {
  CreateUpgradeWin = "/upgrade/upgrade_win/create",
  DeleteUpgradeWin = "/upgrade/upgrade_win/delete",
  GetUpgradeWinById = "/upgrade/upgrade_win",
  GetUpgradeWinList = "/upgrade/upgrade_win/list",
  UpdateUpgradeWin = "/upgrade/upgrade_win/update",
}

/**
 * @description: Get upgrade win list
 */

export const getUpgradeWinList = (params: BaseListReq) => {
  return requestClient.post<BaseDataResp<UpgradeWinListResp>>(
    Api.GetUpgradeWinList,
    params,
  );
};

/**
 *  @description: Create a new upgrade win
 */
export const createUpgradeWin = (params: UpgradeWinInfo) => {
  return requestClient.post<BaseResp>(Api.CreateUpgradeWin, params);
};

/**
 *  @description: Update the upgrade win
 */
export const updateUpgradeWin = (params: UpgradeWinInfo) => {
  return requestClient.post<BaseResp>(Api.UpdateUpgradeWin, params);
};

/**
 *  @description: Delete upgrade wins
 */
export const deleteUpgradeWin = (params: BaseIDsReq) => {
  return requestClient.post<BaseResp>(Api.DeleteUpgradeWin, params);
};

/**
 *  @description: Get upgrade win By ID
 */
export const getUpgradeWinById = (params: BaseIDReq) => {
  return requestClient.post<BaseDataResp<UpgradeWinInfo>>(
    Api.GetUpgradeWinById,
    params,
  );
};
