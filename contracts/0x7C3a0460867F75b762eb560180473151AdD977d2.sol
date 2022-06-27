contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_64a51d97(?) {
    call 0xce0d3b44a9415c5be856fbf3ed9a27739477dea7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd90a7eb(?) payable {
    require calldata.size - 4 >= 64
    mem[96 len 672] = code.data[1206 len 672]
    require ext_code.size(0x95428ac02714244929215638f8f99e9a5a43c8ed)
    call 0x95428ac02714244929215638f8f99e9a5a43c8ed.getHistory(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    mem[768 len 1376] = ext_call.return_data[0 len 1376]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[64] = ceil32(return_data.size) + 768
        require return_data.size >= 1376
        require ext_call.return_data[1344] - 1 % 21 < 21
        require block.timestamp
        emit 0xac581472: ext_call.return_data[1344], mem[(32 * ext_call.return_data[1344] - 1 % 21) + 768] << 152, bool(sha3(block.number << 224 or block.difficulty % 17592186044416 << 180 or arg1 << 176 or arg2 << 168 or uint32(sha3(block.coinbase) % block.timestamp) << 136 or block.timestamp << 104 or mem[(32 * ext_call.return_data[1344] - 1 % 21) + 787 len 13]))
        if bool(sha3(block.number << 224 or block.difficulty % 17592186044416 << 180 or arg1 << 176 or arg2 << 168 or uint32(sha3(block.coinbase) % block.timestamp) << 136 or block.timestamp << 104 or mem[(32 * ext_call.return_data[1344] - 1 % 21) + 787 len 13])) == arg2:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
        else:
            if bool(sha3(block.number << 224 or block.difficulty % 17592186044416 << 180 or arg1 << 176 or arg2 << 168 or uint32(sha3(block.coinbase) % block.timestamp) << 136 or block.timestamp << 104 or mem[(32 * ext_call.return_data[1344] - 1 % 21) + 787 len 13])) >= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
            else:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
}



}
