contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() {
    stor1 = code.data[1898 len 20]
    stor2 = code.data[1930 len 20]
    stor3 = code.data[1962 len 20]
    stor4 = code.data[1994 len 20]
    return code.data[413 len 1473]
}



// =====================  Runtime code  =====================


mapping of uint256 beneficiaryBalance;
array of address beneficiaryList;
address stor2;
address stor3;
address stor4;

function beneficiaryBalance(address arg1) {
    return beneficiaryBalance[arg1]
}

function beneficiaryList(uint256 arg1) {
    require arg1 < 4
    return beneficiaryList[arg1]
}

function _fallback() payable {
    revert
}

function pay() payable {
    require msg.value
    beneficiaryBalance[stor1.length] += msg.value / 4
    beneficiaryBalance[stor2] += msg.value / 4
    beneficiaryBalance[stor3] += msg.value / 4
    beneficiaryBalance[stor4] += msg.value / 4
    emit LogReceived(msg.sender, msg.value);
    return 1
}

function withdraw(uint256 arg1) {
    require beneficiaryBalance[address(msg.sender)] >= arg1
    beneficiaryBalance[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogWithdrawal(msg.sender, arg1);
    return 1
}



}
