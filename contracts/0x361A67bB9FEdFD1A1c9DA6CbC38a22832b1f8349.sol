contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;

function _fallback() payable {
    stor3 = msg.sender
    stor2 = 0
    return code.data[92 len 1684]
}



// =====================  Runtime code  =====================


address richestAddress;
array of uint256 displayString;
uint256 highestBalance;
address stor3;
array of address participants;
array of uint256 pastValues;

function richest() {
    return richestAddress
}

function pastValues(uint256 arg1) {
    require arg1 < pastValues.length
    return pastValues[arg1]
}

function participants(uint256 arg1) {
    require arg1 < participants.length
    return address(participants[arg1])
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

function becomeRichest(string arg1) payable {
    require msg.value > 2 * 10^15
    require eth.balance(msg.sender) > highestBalance
    require arg1.length < 500
    highestBalance = eth.balance(msg.sender)
    pastValues.length++
    if not pastValues.length <= pastValues.length + 1:
        idx = pastValues.length + 1
        while pastValues.length > idx:
            pastValues[idx] = 0
            idx = idx + 1
            continue 
    pastValues[pastValues.length] = eth.balance(msg.sender)
    richestAddress = msg.sender
    participants.length++
    if not participants.length <= participants.length + 1:
        idx = participants.length + 1
        while participants.length > idx:
            uint256(participants[idx]) = 0
            idx = idx + 1
            continue 
    address(participants[participants.length]) = msg.sender
    displayString[] = Array(len=arg1.length, data=arg1[all])
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
