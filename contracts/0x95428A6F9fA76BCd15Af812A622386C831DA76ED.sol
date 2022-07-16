contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
}

function sub_64a51d97(?) {
    call 0x210113d69873c0389085cc09d24338a9965f8218 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    mem[96 len 672] = code.data[961 len 672]
    require ext_code.size(0x95428ac02714244929215638f8f99e9a5a43c8ed)
    call 0x95428ac02714244929215638f8f99e9a5a43c8ed.getHistory(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    mem[768 len 1376] = ext_call.return_data[0 len 1376]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 768
    require return_data.size >= 1376
    require ext_call.return_data[1344] - 1 % 21 < 21
    require block.timestamp
    if bool(sha3(block.number << 224 or block.difficulty % 17592186044416 << 180 or arg2 << 176 or arg3 << 168 or uint32(sha3(block.coinbase) % block.timestamp) << 136 or block.timestamp << 104 or mem[(32 * ext_call.return_data[1344] - 1 % 21) + 787 len 13])) == arg3:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if bool(sha3(block.number << 224 or block.difficulty % 17592186044416 << 180 or arg2 << 176 or arg3 << 168 or uint32(sha3(block.coinbase) % block.timestamp) << 136 or block.timestamp << 104 or mem[(32 * ext_call.return_data[1344] - 1 % 21) + 787 len 13])) >= 0:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            if not arg1 or not 1:
                call 0x210113d69873c0389085cc09d24338a9965f8218 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
