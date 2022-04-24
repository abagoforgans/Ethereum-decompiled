contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;

function _fallback() payable {
    stor3 = msg.sender
    stor2 = 0
    return code.data[92 len 1215]
}



// =====================  Runtime code  =====================


address richestAddress;
array of uint256 displayString;
uint256 highestBalance;
address stor3;

function richest() {
    return richestAddress
}

function highestBalance() {
    return highestBalance
}

function displayString() {
    return displayString[0 len displayString.length]
}

function _fallback() payable {
    revert
}

function withdrawTips() {
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function becomeRichest(string arg1) payable {
    require msg.value > 2 * 10^15
    require eth.balance(msg.sender) > highestBalance
    require arg1.length < 500
    highestBalance = eth.balance(msg.sender)
    richestAddress = msg.sender
    displayString[] = Array(len=arg1.length, data=arg1[all])
}



}
