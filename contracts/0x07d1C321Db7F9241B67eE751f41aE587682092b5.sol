contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 488]




// =====================  Runtime code  =====================


mapping of uint256 get;

function get(address arg1) payable {
    return get[address(arg1)]
}

function _fallback() payable {
  stop
}

function finalize(address arg1, uint256 arg2) payable {
    if 0 == arg2:
        stor[sha3(mem[0 len 64])] = 0
    else:
        call arg1 with:
           value 5 * get[address(arg1)] wei
             gas 0 wei
        get[address(arg1)] = 0
}

function sub_02110d25(?) payable {
    if get[address(msg.sender)] <= 0:
        if eth.balance(this.address) >= 5 * msg.value:
            get[address(msg.sender)] = msg.value + 10
            return 0
        else:
            return 0
    else:
        return 0
}



}
