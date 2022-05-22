contract main {




// =====================  Runtime code  =====================


const thisContractBalance = eth.balance(this.address)


address thisContractAddress;
address adminAddress;
uint256 unlockDate1;
uint256 unlockDate2;
uint256 unlockDate3;
uint256 unlockDate4;
uint256 createdAt;
uint256 ethToBeClaimed;
uint8 stor8;
uint256 percentageQuarter1;
uint256 percentageQuarter2;
uint256 percentageQuarter3;
uint256 hundredPercent;
uint256 quarter1;
uint256 quarter2;
uint256 quarter3;
uint8 stor16;
uint8 stor16; offset 8
uint8 stor16; offset 16

function thisContractAddress() {
    return thisContractAddress
}

function unlockDate2() {
    return unlockDate2
}

function claimAmountSet() {
    return bool(stor8)
}

function percentageQuarter3() {
    return percentageQuarter3
}

function withdraw_2Completed() {
    return bool(uint8(stor16.field_8))
}

function quarter1() {
    return quarter1
}

function quarter2() {
    return quarter2
}

function quarter3() {
    return quarter3
}

function hundredPercent() {
    return hundredPercent
}

function percentageQuarter2() {
    return percentageQuarter2
}

function withdraw_1Completed() {
    return bool(uint8(stor16.field_0))
}

function unlockDate3() {
    return unlockDate3
}

function unlockDate1() {
    return unlockDate1
}

function percentageQuarter1() {
    return percentageQuarter1
}

function createdAt() {
    return createdAt
}

function ethToBeClaimed() {
    return ethToBeClaimed
}

function withdraw_3Completed() {
    return bool(uint8(stor16.field_16))
}

function admin() {
    return adminAddress
}

function unlockDate4() {
    return unlockDate4
}

function _fallback() payable {
  stop
}

function setEthToBeClaimed() {
    require msg.sender == adminAddress
    require not stor8
    ethToBeClaimed = eth.balance(this.address)
    stor8 = 1
}

function withdraw_4() {
    require msg.sender == adminAddress
    require block.timestamp >= unlockDate4
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrew(adminAddress, eth.balance(this.address));
}

function withdraw_2() {
    require msg.sender == adminAddress
    require 0 < ethToBeClaimed
    require not uint8(stor16.field_8)
    require block.timestamp >= unlockDate2
    require quarter2
    call adminAddress with:
       value ethToBeClaimed / quarter2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require quarter2
    emit Withdrew(adminAddress, ethToBeClaimed / quarter2);
    uint8(stor16.field_8) = 1
}

function withdraw_1() {
    require msg.sender == adminAddress
    require 0 < ethToBeClaimed
    require not uint8(stor16.field_0)
    require block.timestamp >= unlockDate1
    require quarter1
    call adminAddress with:
       value ethToBeClaimed / quarter1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require quarter1
    emit Withdrew(adminAddress, ethToBeClaimed / quarter1);
    uint8(stor16.field_0) = 1
}

function withdraw_3() {
    require msg.sender == adminAddress
    require 0 < ethToBeClaimed
    require not uint8(stor16.field_16)
    require block.timestamp >= unlockDate3
    require quarter3
    call adminAddress with:
       value ethToBeClaimed / quarter3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require quarter3
    emit Withdrew(adminAddress, ethToBeClaimed / quarter3);
    uint8(stor16.field_16) = 1
}



}
