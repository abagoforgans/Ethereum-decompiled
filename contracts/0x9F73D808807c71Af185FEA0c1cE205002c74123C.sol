contract main {




// =====================  Runtime code  =====================


const thisContractBalance = eth.balance(this.address)


address thisContractAddress;
address adminAddress;
uint256 createdAt;
address ethertoteDevelopmentWalletAddress;
address toteLiquidatorWalletAddress;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
address teamEthContractAddress;
uint256 ethToBeDistributed;
uint8 stor7;
uint256 divForEthertoteDevelopmentWallet;
uint256 divForEthertoteLiquidatorWallet;
uint256 divForTeamEthContract;

function divForEthertoteDevelopmentWallet() {
    return divForEthertoteDevelopmentWallet
}

function divForTeamEthContract() {
    return divForTeamEthContract
}

function thisContractAddress() {
    return thisContractAddress
}

function toteLiquidatorWallet() {
    return toteLiquidatorWalletAddress
}

function divForEthertoteLiquidatorWallet() {
    return divForEthertoteLiquidatorWallet
}

function teamEthContract() {
    return teamEthContractAddress
}

function toteLiquidatorTransferComplete() {
    return bool(uint8(stor5.field_168))
}

function createdAt() {
    return createdAt
}

function ethertoteDevelopmentTransferComplete() {
    return bool(uint8(stor5.field_160))
}

function teamEthTransferComplete() {
    return bool(uint8(stor5.field_176))
}

function ethertoteDevelopmentWallet() {
    return ethertoteDevelopmentWalletAddress
}

function ethToBeDistributed() {
    return ethToBeDistributed
}

function ethToBeDistributedSet() {
    return bool(stor7)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function _A_tokenSaleCompleted() {
    require msg.sender == adminAddress
    require not stor7
    ethToBeDistributed = eth.balance(this.address)
    stor7 = 1
    emit Received(block.timestamp);
}

function ClaimEth() {
    require msg.sender == adminAddress
    require 1 == bool(uint8(stor5.field_160))
    require 1 == bool(uint8(stor5.field_168))
    require 1 == bool(uint8(stor5.field_176))
    require eth.balance(this.address) > 0
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _D_sendToTeamEthContract() {
    require msg.sender == adminAddress
    require not uint8(stor5.field_176)
    require 0 < ethToBeDistributed
    require divForTeamEthContract
    call teamEthContractAddress with:
       value ethToBeDistributed / divForTeamEthContract wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require divForTeamEthContract
    emit SentToTeamEth((ethToBeDistributed / divForTeamEthContract));
    uint8(stor5.field_176) = 1
}

function _C_sendToToteLiquidatorWallet() {
    require msg.sender == adminAddress
    require not uint8(stor5.field_168)
    require 0 < ethToBeDistributed
    require divForEthertoteLiquidatorWallet
    call toteLiquidatorWalletAddress with:
       value ethToBeDistributed / divForEthertoteLiquidatorWallet wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require divForEthertoteLiquidatorWallet
    emit SentToLiquidator((ethToBeDistributed / divForEthertoteLiquidatorWallet));
    uint8(stor5.field_168) = 1
}

function _B_sendToEthertoteDevelopmentWallet() {
    require msg.sender == adminAddress
    require not uint8(stor5.field_160)
    require 0 < ethToBeDistributed
    require divForEthertoteDevelopmentWallet
    call ethertoteDevelopmentWalletAddress with:
       value ethToBeDistributed / divForEthertoteDevelopmentWallet wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require divForEthertoteDevelopmentWallet
    emit SentToDev((ethToBeDistributed / divForEthertoteDevelopmentWallet));
    uint8(stor5.field_160) = 1
}



}
