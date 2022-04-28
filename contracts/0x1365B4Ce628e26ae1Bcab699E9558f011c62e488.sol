contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 10^15
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[110 len 2145]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct campaignDailyPrice;
uint256 dailyPrice;
uint256 stor3;

function getDailyPrice() {
    return dailyPrice
}

function getCampaignDailyPrice(address arg1) {
    return campaignDailyPrice[address(arg1)].field_512
}

function getBalance(address arg1) {
    return campaignDailyPrice[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (stor0 == msg.sender)
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function setDailyPrice(uint256 arg1) {
    require msg.sender == stor0
    dailyPrice = arg1
}

function withdrawOwnersMoney() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getUnusedBalance(address arg1) {
    if campaignDailyPrice[address(arg1)].field_0:
        return (campaignDailyPrice[address(arg1)].field_0 - (block.timestamp - campaignDailyPrice[address(arg1)].field_256 / 24 * 3600 * dailyPrice))
    else:
        return 0
}

function depositFunds() payable {
    require msg.value >= dailyPrice
    stor3 += msg.value
    if campaignDailyPrice[address(msg.sender)].field_0:
        campaignDailyPrice[address(msg.sender)].field_0 += msg.value
    else:
        campaignDailyPrice[address(msg.sender)].field_0 = msg.value
        campaignDailyPrice[address(msg.sender)].field_256 = block.timestamp
        campaignDailyPrice[address(msg.sender)].field_512 = dailyPrice
    emit eventPaid(msg.value, campaignDailyPrice[address(msg.sender)].field_0, stor3, msg.sender);
}



}
