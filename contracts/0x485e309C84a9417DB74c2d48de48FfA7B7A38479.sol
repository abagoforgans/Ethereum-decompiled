contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 843]
}



// =====================  Runtime code  =====================


address stor0;
array of address stor1;
array of uint256 stor2;

function _fallback() payable {
    revert
}

function sub_b01217f4(?) {
    if msg.sender == stor0:
        require arg2 <= eth.balance(this.address)
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit fundMoved(address(arg1), arg2);
}

function donate() payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor2[stor2.length] = msg.value
}



}
