contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function owner() {
    return owner
}

function recordCount() {
    return stor1.length
}

function record(uint256 arg1) {
    require arg1 < stor1.length
    return stor1.length, stor1[arg1].field_0, stor1[arg1].field_256
}

function _fallback() payable {
    require msg.value > 0
    stor1.length++
    stor1[stor1.length].field_0 = msg.sender
    storB10E[stor1.length] = msg.value
}

function withdrawTo() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
