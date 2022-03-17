contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[418 len 32]
    return code.data[55 len 363]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    if calldata.size > 0:
        mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
        if not calldata.size % 32:
            call address(stor0) with:
               funct call.data[0 len 4]
                 gas gas_remaining - 10000 wei
                args call.data[4 len calldata.size - 4]
        else:
            mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
            call address(stor0) with:
               funct call.data[0 len 4]
                 gas gas_remaining - 10000 wei
                args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
        if ext_call.success:
            if 30000 * block.gasprice <= eth.balance(this.address):
                if 30000 * block.gasprice > 0:
                    call tx.origin with:
                       value 30000 * block.gasprice wei
                         gas 0 wei
            else:
                if eth.balance(this.address) > 0:
                    call tx.origin with:
                       value eth.balance(this.address) wei
                         gas 0 wei
        else:
            if 29872 * block.gasprice <= eth.balance(this.address):
                if 29872 * block.gasprice > 0:
                    call tx.origin with:
                       value 29872 * block.gasprice wei
                         gas 0 wei
            else:
                if eth.balance(this.address) > 0:
                    call tx.origin with:
                       value eth.balance(this.address) wei
                         gas 0 wei
}



}
