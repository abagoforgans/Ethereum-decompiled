contract main {




// =====================  Runtime code  =====================


#
#  - endRound()
#  - sub_ad2903a9(?)
#
const getBalance = eth.balance(this.address)


uint256 keyCount;
uint256 lastPlayTimestamp;
uint256 startTimestamp;
uint256 stor3;
uint256 stor4;
uint256 sub_9e397c12;
uint256 sub_f37afd8d;
uint256 roundNum;
uint256 sub_1eb19f11;
uint256 sub_d38ffbcb;
uint256 sub_b4ea39fd;
uint256 sub_38f0dcb4;
uint256 sub_ab03cfaf;
mapping of struct investorInfo;
address stor15;
address stor17;
address stor18;
address stor19;
address stor20;
address stor21;
address stor22;
address stor23;

function getInvestorInfo(address arg1) {
    return investorInfo[address(arg1)].field_0, 
           investorInfo[address(arg1)].field_256,
           investorInfo[address(arg1)].field_768,
           investorInfo[address(arg1)].field_1024,
           investorInfo[address(arg1)].field_1280,
           investorInfo[address(arg1)].field_1536
}

function roundNum() {
    return roundNum
}

function sub_1eb19f11(?) {
    return sub_1eb19f11
}

function sub_38f0dcb4(?) {
    return sub_38f0dcb4
}

function lastPlayTimestamp() {
    return lastPlayTimestamp
}

function sub_9e397c12(?) {
    return sub_9e397c12
}

function sub_ab03cfaf(?) {
    return sub_ab03cfaf
}

function sub_b4ea39fd(?) {
    return sub_b4ea39fd
}

function sub_d38ffbcb(?) {
    return sub_d38ffbcb
}

function startTimestamp() {
    return startTimestamp
}

function sub_f37afd8d(?) {
    return sub_f37afd8d
}

function keyCount() {
    return keyCount
}

function kill(address arg1) {
    require msg.sender == stor15
    selfdestruct(arg1)
}

function setReference(address arg1) {
    investorInfo[msg.sender].field_256 = arg1
}

function setAdminAddr(address arg1) {
    require msg.sender == stor15
    stor17 = arg1
}

function sub_dfdfeb20(?) {
    require msg.sender == stor15
    investorInfo[address(arg1)].field_1024 = arg3
    investorInfo[address(arg1)].field_768 = arg2
}

function sub_8fa7a6ba(?) {
    require msg.sender == stor15
    stor18 = arg1
    stor19 = arg2
    stor20 = arg3
    stor21 = arg4
    stor22 = arg5
    stor23 = arg6
}

function getEndTime() {
    if startTimestamp + (keyCount * stor3) <= lastPlayTimestamp:
        return (startTimestamp + stor4 + (keyCount * stor3))
    return (lastPlayTimestamp + stor4)
}

function getKeyPrice() {
    require keyCount + 3000 >= keyCount
    if not keyCount + 3000:
        return 0
    require (10^10 * keyCount) + 3 * 10^13 / keyCount + 3000 == 10^10
    return ((10^10 * keyCount) + 3 * 10^13)
}

function sub_3af6ffa9(?) {
    require msg.sender == stor15
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_68bcad04(?) {
    require keyCount + 3000 >= keyCount
    if not keyCount + 3000:
        return 0
    require (10^10 * keyCount) + 3 * 10^13 / keyCount + 3000 == 10^10
    if not (10^10 * keyCount) + 3 * 10^13:
        return 0
    require (3 * 10^13 * arg1) + (10^10 * keyCount * arg1) / (10^10 * keyCount) + 3 * 10^13 == arg1
    return ((3 * 10^13 * arg1) + (10^10 * keyCount * arg1))
}

function withdraw() payable {
    if msg.sender == stor17:
        investorInfo[msg.sender].field_1280 += sub_ab03cfaf
        sub_ab03cfaf = 0
    if investorInfo[msg.sender].field_1280:
        call msg.sender with:
           value investorInfo[msg.sender].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        investorInfo[msg.sender].field_1280 = 0
        investorInfo[msg.sender].field_0 += investorInfo[msg.sender].field_1280
}

function _fallback() payable {
    if msg.sender == stor17:
        investorInfo[msg.sender].field_1280 += sub_ab03cfaf
        sub_ab03cfaf = 0
    if investorInfo[msg.sender].field_1280:
        call msg.sender with:
           value investorInfo[msg.sender].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        investorInfo[msg.sender].field_1280 = 0
        investorInfo[msg.sender].field_0 += investorInfo[msg.sender].field_1280
}



}
