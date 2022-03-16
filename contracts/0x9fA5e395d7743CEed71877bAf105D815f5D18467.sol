contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xbe094888e931ffe10679f9563718ed925a3dc0a7
    return code.data[56 len 221]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 get;

function get() payable {
    return get[address(msg.sender)]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function set(uint256 arg1) payable {
    get[address(msg.sender)] = arg1
}

function sub_a27d9bd9(?) payable {
    if stor0 != msg.sender:
        return 0
    return get[address(arg1)]
}



}
