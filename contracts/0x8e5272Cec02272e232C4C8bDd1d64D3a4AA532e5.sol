contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;

function _fallback() payable {
  stop
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Only owners can call this.'
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Only owners can call this.'
    stor0[address(arg1)] = 0
}

function addAdmins(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'Only owners can call this.'
    # nil
}

function removeAdmins(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, 'Only owners can call this.'
    # nil
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'Only owners can call this.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exec() {
    if msg.sender == stor1:
        mem[64] = 416
        idx = 4
        while idx < calldata.size:
            if Mask(8, 248, cd[idx]) >> 248 != 1:
                if Mask(8, 248, cd[idx]) >> 248 <= 1 or Mask(8, 248, cd[idx]) >> 248 >= 7:
                    require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
                    idx = idx + 1
                    continue 
                require idx + 65 <= calldata.size
                if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 3 or Mask(8, 248, cd[idx]) >> 248 == 4:
                    if mem[cd[(idx + 1)] + 96] > cd[(idx + 33)]:
                        return 0
                if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 6:
                    if mem[cd[(idx + 1)] + 96] == cd[(idx + 33)]:
                        return 0
                if Mask(8, 248, cd[idx]) >> 248 == 4 or Mask(8, 248, cd[idx]) >> 248 == 5 or Mask(8, 248, cd[idx]) >> 248 == 6:
                    if mem[cd[(idx + 1)] + 96] < cd[(idx + 33)]:
                        return 0
                require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
                idx = idx + 65
                continue 
            require idx + 129 <= calldata.size
            require idx + cd[(idx + 97)] + 129 <= calldata.size
            _24 = mem[64]
            mem[64] = mem[64] + cd[(idx + 97)]
            mem[_24 len cd[(idx + 97)]] = call.data[idx + 129 len cd[(idx + 97)]]
            if cd[(idx + 1)]:
                call cd[(idx + 33)] with:
                   value cd[(idx + 65)] wei
                     gas cd[(idx + 1)] wei
                    args call.data[idx + 129 len cd[(idx + 97)]]
            else:
                call cd[(idx + 33)] with:
                   value cd[(idx + 65)] wei
                     gas gas_remaining wei
                    args call.data[idx + 129 len cd[(idx + 97)]]
            mem[96 len 320] = ext_call.return_data[0 len 320]
            require ext_call.success
            if Mask(8, 248, cd[idx]) >> 248 <= 1 or Mask(8, 248, cd[idx]) >> 248 >= 7:
                require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
                idx = idx + cd[(idx + 97)] + 129
                continue 
            require idx + cd[(idx + 97)] + 193 <= calldata.size
            if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 3 or Mask(8, 248, cd[idx]) >> 248 == 4:
                if mem[cd[(idx + cd[(idx + 97)] + 129)] + 96] > cd[(idx + cd[(idx + 97)] + 161)]:
                    return 0
            if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 6:
                if mem[cd[(idx + cd[(idx + 97)] + 129)] + 96] == cd[(idx + cd[(idx + 97)] + 161)]:
                    return 0
            if Mask(8, 248, cd[idx]) >> 248 == 4 or Mask(8, 248, cd[idx]) >> 248 == 5 or Mask(8, 248, cd[idx]) >> 248 == 6:
                if mem[cd[(idx + cd[(idx + 97)] + 129)] + 96] < cd[(idx + cd[(idx + 97)] + 161)]:
                    return 0
            require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
            idx = idx + cd[(idx + 97)] + 193
            continue 
    else:
        if not stor0[address(msg.sender)]:
            revert with 0, 'Only admins can call this.'
        mem[64] = 416
        idx = 4
        while idx < calldata.size:
            if Mask(8, 248, cd[idx]) >> 248 != 1:
                if Mask(8, 248, cd[idx]) >> 248 <= 1 or Mask(8, 248, cd[idx]) >> 248 >= 7:
                    require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
                    idx = idx + 1
                    continue 
                require idx + 65 <= calldata.size
                if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 3 or Mask(8, 248, cd[idx]) >> 248 == 4:
                    if mem[cd[(idx + 1)] + 96] > cd[(idx + 33)]:
                        return 0
                if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 6:
                    if mem[cd[(idx + 1)] + 96] == cd[(idx + 33)]:
                        return 0
                if Mask(8, 248, cd[idx]) >> 248 == 4 or Mask(8, 248, cd[idx]) >> 248 == 5 or Mask(8, 248, cd[idx]) >> 248 == 6:
                    if mem[cd[(idx + 1)] + 96] < cd[(idx + 33)]:
                        return 0
                require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
                idx = idx + 65
                continue 
            require idx + 129 <= calldata.size
            require idx + cd[(idx + 97)] + 129 <= calldata.size
            _25 = mem[64]
            mem[64] = mem[64] + cd[(idx + 97)]
            mem[_25 len cd[(idx + 97)]] = call.data[idx + 129 len cd[(idx + 97)]]
            if cd[(idx + 1)]:
                call cd[(idx + 33)] with:
                   value cd[(idx + 65)] wei
                     gas cd[(idx + 1)] wei
                    args call.data[idx + 129 len cd[(idx + 97)]]
            else:
                call cd[(idx + 33)] with:
                   value cd[(idx + 65)] wei
                     gas gas_remaining wei
                    args call.data[idx + 129 len cd[(idx + 97)]]
            mem[96 len 320] = ext_call.return_data[0 len 320]
            require ext_call.success
            if Mask(8, 248, cd[idx]) >> 248 <= 1 or Mask(8, 248, cd[idx]) >> 248 >= 7:
                require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
                idx = idx + cd[(idx + 97)] + 129
                continue 
            require idx + cd[(idx + 97)] + 193 <= calldata.size
            if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 3 or Mask(8, 248, cd[idx]) >> 248 == 4:
                if mem[cd[(idx + cd[(idx + 97)] + 129)] + 96] > cd[(idx + cd[(idx + 97)] + 161)]:
                    return 0
            if Mask(8, 248, cd[idx]) >> 248 == 2 or Mask(8, 248, cd[idx]) >> 248 == 6:
                if mem[cd[(idx + cd[(idx + 97)] + 129)] + 96] == cd[(idx + cd[(idx + 97)] + 161)]:
                    return 0
            if Mask(8, 248, cd[idx]) >> 248 == 4 or Mask(8, 248, cd[idx]) >> 248 == 5 or Mask(8, 248, cd[idx]) >> 248 == 6:
                if mem[cd[(idx + cd[(idx + 97)] + 129)] + 96] < cd[(idx + cd[(idx + 97)] + 161)]:
                    return 0
            require Mask(8, 248, cd[idx]) >> 248 >= 1 and Mask(8, 248, cd[idx]) >> 248 <= 6
            idx = idx + cd[(idx + 97)] + 193
            continue 
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'Lossless'
}

function sub_3df7b6b9(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == stor1:
        if eth.balance(this.address) < cd[4]:
            revert with 0, 'Insufficient ETH'
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = cd[4]
        while idx < ('cd', 36).length:
            if cd[((32 * idx) + cd[36] + 36)] == 1:
                require idx + 1 < ('cd', 36).length
                require idx + 2 < ('cd', 36).length
                if address(t):
                    mem[100] = address(t)
                    if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                        mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(t), address(cd[((32 * idx + 2) + cd[36] + 36)]), w
                    else:
                        mem[132] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(t), 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, w
                else:
                    mem[100] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                    if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                        mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, address(cd[((32 * idx + 2) + cd[36] + 36)]), w
                    else:
                        mem[132] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, w
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = ext_call.return_data[0]
                w = ext_call.return_data[0]
                continue 
            if cd[((32 * idx) + cd[36] + 36)] != 2:
                if cd[((32 * idx) + cd[36] + 36)] != 3:
                    revert with 0, 'Invalid trade type'
                require idx + 1 < ('cd', 36).length
                require idx + 2 < ('cd', 36).length
                mem[100] = w
                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                if address(t):
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args w
                else:
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getEthToTokenInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args w
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = ext_call.return_data[0]
                w = ext_call.return_data[0]
                continue 
            require idx + 1 < ('cd', 36).length
            require idx + 2 < ('cd', 36).length
            if not address(t):
                mem[100] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                if not address(cd[((32 * idx + 2) + cd[36] + 36)]):
                    mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[164] = w
                    mem[196] = block.number
                    require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, w, block.number
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                mem[164] = w
                mem[196] = block.number
                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[((32 * idx + 2) + cd[36] + 36)]), w, block.number
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((32 * idx + 2) + cd[36] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                require ext_code.size(address(cd[((32 * idx + 2) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 2) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if ext_call.return_data[0] >= 18:
                    if ext_call.return_data[0] - 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    continue 
                if -ext_call.return_data[0] + 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(-ext_call.return_data[0] + 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                continue 
            mem[100] = address(t)
            if not address(cd[((32 * idx + 2) + cd[36] + 36)]):
                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[164] = w
                mem[196] = block.number
                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args address(t), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, w, block.number
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(t) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                require ext_code.size(address(t))
                staticcall address(t).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if 18 >= ext_call.return_data[0]:
                    if -ext_call.return_data[0] + 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    continue 
                if ext_call.return_data[0] - 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(ext_call.return_data[0] - 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                continue 
            mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
            mem[164] = w
            mem[196] = block.number
            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(t), address(cd[((32 * idx + 2) + cd[36] + 36)]), w, block.number
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(t) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if address(cd[((32 * idx + 2) + cd[36] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                require ext_code.size(address(cd[((32 * idx + 2) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 2) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if ext_call.return_data[0] >= 18:
                    if ext_call.return_data[0] - 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    continue 
                if -ext_call.return_data[0] + 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(-ext_call.return_data[0] + 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                continue 
            require ext_code.size(address(t))
            staticcall address(t).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(cd[((32 * idx + 2) + cd[36] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if 18 >= ext_call.return_data[0]:
                    if -ext_call.return_data[0] + 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    continue 
                if ext_call.return_data[0] - 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(ext_call.return_data[0] - 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                continue 
            require ext_code.size(address(cd[((32 * idx + 2) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx + 2) + cd[36] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if w > 10000000000 * 10^18:
                revert with 0, 'MAX_QTY'
            if ext_call.return_data[0] > 1000000 * 10^18:
                revert with 0, 'MAX_RATE'
            if ext_call.return_data[0] < ext_call.return_data[0]:
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^0
                w = w * ext_call.return_data[0] / 10^18 * 10^0
                continue 
            idx = idx + 3
            s = cd[((32 * idx + 2) + cd[36] + 36)]
            t = cd[((32 * idx + 2) + cd[36] + 36)]
            u = cd[((32 * idx) + cd[36] + 36)]
            v = w * ext_call.return_data[0] * 10^0 / 10^18
            w = w * ext_call.return_data[0] * 10^0 / 10^18
            continue 
        if w >= cd[4]:
            idx = 0
            t = s
            w = 0
            x = u
            x = v
            y = cd[4]
            while idx < ('cd', 36).length:
                if cd[((32 * idx) + cd[36] + 36)] != 1:
                    if cd[((32 * idx) + cd[36] + 36)] != 2:
                        if cd[((32 * idx) + cd[36] + 36)] != 3:
                            idx = idx + 1
                            t = t
                            w = t
                            x = cd[((32 * idx) + cd[36] + 36)]
                            x = x
                            y = x
                            continue 
                        require idx + 1 < ('cd', 36).length
                        require idx + 2 < ('cd', 36).length
                        if not address(w):
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 525960 * 24 * 3600
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                               value y wei
                                 gas gas_remaining wei
                                args 1, 525960 * 24 * 3600
                        else:
                            require ext_code.size(address(w))
                            if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                call address(w).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            call address(w).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx + 1) + cd[36] + 36)]), y
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = y
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 525960 * 24 * 3600
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args y, 1, 525960 * 24 * 3600
                    else:
                        require idx + 1 < ('cd', 36).length
                        require idx + 2 < ('cd', 36).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).kyberNetwork() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).kyberNetworkProxyContract() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(w):
                            if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                                mem[mem[64] + 4] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                mem[mem[64] + 36] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 2) + cd[36] + 36)]), 1
                            else:
                                mem[mem[64] + 4] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                mem[mem[64] + 36] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 1
                        else:
                            if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                                if address(w) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                       value y wei
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx + 2) + cd[36] + 36)]), 1
                                else:
                                    require ext_code.size(address(w))
                                    if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                        call address(w).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), y
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = address(w)
                                    mem[mem[64] + 36] = y
                                    mem[mem[64] + 68] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(w), y, 1
                            else:
                                if address(w) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                    mem[mem[64] + 4] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                       value y wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 1
                                else:
                                    require ext_code.size(address(w))
                                    if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                        call address(w).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), y
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = address(w)
                                    mem[mem[64] + 36] = y
                                    mem[mem[64] + 68] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(w), y, 1
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    require idx + 1 < ('cd', 36).length
                    require idx + 2 < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(w):
                        if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                            _663 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_663]
                            mem[_663 + 32] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            require 1 < mem[_663]
                            mem[_663 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_663]
                            mem[_663 + 96] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                            mem[_663 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                            mem[_663 + 164] = y
                            mem[_663 + 196] = 1
                            mem[_663 + 132] = 96
                            mem[_663 + 228] = mem[_663]
                            s = 0
                            while s < 32 * mem[_663]:
                                mem[_663 + s + 260] = mem[_663 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value y wei
                                 gas gas_remaining wei
                                args 96, y, 1, mem[_663 + 228 len (32 * mem[_663]) + 32]
                            mem[_663 + 128] = ext_call.return_data[0]
                        else:
                            _665 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_665]
                            mem[_665 + 32] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            require 1 < mem[_665]
                            mem[_665 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_665]
                            mem[_665 + 96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            mem[_665 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                            mem[_665 + 164] = y
                            mem[_665 + 196] = 1
                            mem[_665 + 132] = 96
                            mem[_665 + 228] = mem[_665]
                            s = 0
                            while s < 32 * mem[_665]:
                                mem[_665 + s + 260] = mem[_665 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value y wei
                                 gas gas_remaining wei
                                args 96, y, 1, mem[_665 + 228 len (32 * mem[_665]) + 32]
                            mem[_665 + 128] = ext_call.return_data[0]
                    else:
                        if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                            _659 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_659]
                            mem[_659 + 32] = address(w)
                            require 1 < mem[_659]
                            mem[_659 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_659]
                            mem[_659 + 96] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                            if address(w) == 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315:
                                mem[_659 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_659 + 164] = y
                                mem[_659 + 196] = 1
                                mem[_659 + 132] = 96
                                mem[_659 + 228] = mem[_659]
                                s = 0
                                while s < 32 * mem[_659]:
                                    mem[_659 + s + 260] = mem[_659 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_659 + 228 len (32 * mem[_659]) + 32]
                            else:
                                require ext_code.size(address(w))
                                if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                call address(w).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 1) + cd[36] + 36)]), y
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_659 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_659 + 164] = y
                                mem[_659 + 196] = 1
                                mem[_659 + 132] = 96
                                mem[_659 + 228] = mem[_659]
                                s = 0
                                while s < 32 * mem[_659]:
                                    mem[_659 + s + 260] = mem[_659 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_659 + 228 len (32 * mem[_659]) + 32]
                            mem[_659 + 128] = ext_call.return_data[0]
                        else:
                            _661 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_661]
                            mem[_661 + 32] = address(w)
                            require 1 < mem[_661]
                            mem[_661 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_661]
                            mem[_661 + 96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            if address(w) == 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315:
                                mem[_661 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_661 + 164] = y
                                mem[_661 + 196] = 1
                                mem[_661 + 132] = 96
                                mem[_661 + 228] = mem[_661]
                                s = 0
                                while s < 32 * mem[_661]:
                                    mem[_661 + s + 260] = mem[_661 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_661 + 228 len (32 * mem[_661]) + 32]
                            else:
                                require ext_code.size(address(w))
                                if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                call address(w).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 1) + cd[36] + 36)]), y
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_661 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_661 + 164] = y
                                mem[_661 + 196] = 1
                                mem[_661 + 132] = 96
                                mem[_661 + 228] = mem[_661]
                                s = 0
                                while s < 32 * mem[_661]:
                                    mem[_661 + s + 260] = mem[_661 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_661 + 228 len (32 * mem[_661]) + 32]
                            mem[_661 + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 3
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                w = cd[((32 * idx + 2) + cd[36] + 36)]
                x = cd[((32 * idx) + cd[36] + 36)]
                x = ext_call.return_data[0]
                y = ext_call.return_data[0]
                continue 
    else:
        mem[0] = msg.sender
        mem[32] = 0
        if not stor0[address(msg.sender)]:
            revert with 0, 'Only admins can call this.'
        if eth.balance(this.address) < cd[4]:
            revert with 0, 'Insufficient ETH'
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = cd[4]
        while idx < ('cd', 36).length:
            if cd[((32 * idx) + cd[36] + 36)] == 1:
                require idx + 1 < ('cd', 36).length
                require idx + 2 < ('cd', 36).length
                if address(t):
                    mem[100] = address(t)
                    if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                        mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(t), address(cd[((32 * idx + 2) + cd[36] + 36)]), w
                    else:
                        mem[132] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args address(t), 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, w
                else:
                    mem[100] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                    if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                        mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, address(cd[((32 * idx + 2) + cd[36] + 36)]), w
                    else:
                        mem[132] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                        mem[164] = w
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getReturn(address arg1, address arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, w
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = ext_call.return_data[0]
                w = ext_call.return_data[0]
                continue 
            if cd[((32 * idx) + cd[36] + 36)] != 2:
                if cd[((32 * idx) + cd[36] + 36)] != 3:
                    revert with 0, 'Invalid trade type'
                require idx + 1 < ('cd', 36).length
                require idx + 2 < ('cd', 36).length
                mem[100] = w
                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                if address(t):
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getTokenToEthInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args w
                else:
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getEthToTokenInputPrice(uint256 arg1) with:
                            gas gas_remaining wei
                           args w
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = ext_call.return_data[0]
                w = ext_call.return_data[0]
                continue 
            require idx + 1 < ('cd', 36).length
            require idx + 2 < ('cd', 36).length
            if not address(t):
                mem[100] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                if not address(cd[((32 * idx + 2) + cd[36] + 36)]):
                    mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                    mem[164] = w
                    mem[196] = block.number
                    require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, w, block.number
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                mem[164] = w
                mem[196] = block.number
                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(cd[((32 * idx + 2) + cd[36] + 36)]), w, block.number
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(cd[((32 * idx + 2) + cd[36] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                require ext_code.size(address(cd[((32 * idx + 2) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 2) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if ext_call.return_data[0] >= 18:
                    if ext_call.return_data[0] - 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    continue 
                if -ext_call.return_data[0] + 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(-ext_call.return_data[0] + 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                continue 
            mem[100] = address(t)
            if not address(cd[((32 * idx + 2) + cd[36] + 36)]):
                mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                mem[164] = w
                mem[196] = block.number
                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args address(t), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, w, block.number
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(t) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                require ext_code.size(address(t))
                staticcall address(t).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if 18 >= ext_call.return_data[0]:
                    if -ext_call.return_data[0] + 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    continue 
                if ext_call.return_data[0] - 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(ext_call.return_data[0] - 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                continue 
            mem[132] = address(cd[((32 * idx + 2) + cd[36] + 36)])
            mem[164] = w
            mem[196] = block.number
            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args address(t), address(cd[((32 * idx + 2) + cd[36] + 36)]), w, block.number
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(t) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if address(cd[((32 * idx + 2) + cd[36] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if w > 10000000000 * 10^18:
                        revert with 0, 'MAX_QTY'
                    if ext_call.return_data[0] > 1000000 * 10^18:
                        revert with 0, 'MAX_RATE'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] / 10^18
                    w = w * ext_call.return_data[0] / 10^18
                    continue 
                require ext_code.size(address(cd[((32 * idx + 2) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx + 2) + cd[36] + 36)]).0x313ce567 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if ext_call.return_data[0] >= 18:
                    if ext_call.return_data[0] - 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(ext_call.return_data[0] - 18) / 10^18
                    continue 
                if -ext_call.return_data[0] + 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(-ext_call.return_data[0] + 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(-ext_call.return_data[0] + 18)
                continue 
            require ext_code.size(address(t))
            staticcall address(t).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(cd[((32 * idx + 2) + cd[36] + 36)]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                if w > 10000000000 * 10^18:
                    revert with 0, 'MAX_QTY'
                if ext_call.return_data[0] > 1000000 * 10^18:
                    revert with 0, 'MAX_RATE'
                if 18 >= ext_call.return_data[0]:
                    if -ext_call.return_data[0] + 18 > 18:
                        revert with 0, 'MAX_DECIMALS_DST'
                    idx = idx + 3
                    s = cd[((32 * idx + 2) + cd[36] + 36)]
                    t = cd[((32 * idx + 2) + cd[36] + 36)]
                    u = cd[((32 * idx) + cd[36] + 36)]
                    v = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    w = w * ext_call.return_data[0] * 10^(-ext_call.return_data[0] + 18) / 10^18
                    continue 
                if ext_call.return_data[0] - 18 > 18:
                    revert with 0, 'MAX_DECIMALS_SRC'
                require 10^18 * 10^(ext_call.return_data[0] - 18)
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                w = w * ext_call.return_data[0] / 10^18 * 10^(ext_call.return_data[0] - 18)
                continue 
            require ext_code.size(address(cd[((32 * idx + 2) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx + 2) + cd[36] + 36)]).0x313ce567 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if w > 10000000000 * 10^18:
                revert with 0, 'MAX_QTY'
            if ext_call.return_data[0] > 1000000 * 10^18:
                revert with 0, 'MAX_RATE'
            if ext_call.return_data[0] < ext_call.return_data[0]:
                idx = idx + 3
                s = cd[((32 * idx + 2) + cd[36] + 36)]
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                u = cd[((32 * idx) + cd[36] + 36)]
                v = w * ext_call.return_data[0] / 10^18 * 10^0
                w = w * ext_call.return_data[0] / 10^18 * 10^0
                continue 
            idx = idx + 3
            s = cd[((32 * idx + 2) + cd[36] + 36)]
            t = cd[((32 * idx + 2) + cd[36] + 36)]
            u = cd[((32 * idx) + cd[36] + 36)]
            v = w * ext_call.return_data[0] * 10^0 / 10^18
            w = w * ext_call.return_data[0] * 10^0 / 10^18
            continue 
        if w >= cd[4]:
            idx = 0
            t = s
            w = 0
            x = u
            x = v
            y = cd[4]
            while idx < ('cd', 36).length:
                if cd[((32 * idx) + cd[36] + 36)] != 1:
                    if cd[((32 * idx) + cd[36] + 36)] != 2:
                        if cd[((32 * idx) + cd[36] + 36)] != 3:
                            idx = idx + 1
                            t = t
                            w = t
                            x = cd[((32 * idx) + cd[36] + 36)]
                            x = x
                            y = x
                            continue 
                        require idx + 1 < ('cd', 36).length
                        require idx + 2 < ('cd', 36).length
                        if not address(w):
                            mem[mem[64] + 4] = 1
                            mem[mem[64] + 36] = 525960 * 24 * 3600
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
                               value y wei
                                 gas gas_remaining wei
                                args 1, 525960 * 24 * 3600
                        else:
                            require ext_code.size(address(w))
                            if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                call address(w).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            call address(w).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx + 1) + cd[36] + 36)]), y
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = y
                            mem[mem[64] + 36] = 1
                            mem[mem[64] + 68] = 525960 * 24 * 3600
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args y, 1, 525960 * 24 * 3600
                    else:
                        require idx + 1 < ('cd', 36).length
                        require idx + 2 < ('cd', 36).length
                        require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).kyberNetwork() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).kyberNetworkProxyContract() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(w):
                            if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                                mem[mem[64] + 4] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                mem[mem[64] + 36] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 2) + cd[36] + 36)]), 1
                            else:
                                mem[mem[64] + 4] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                mem[mem[64] + 36] = 1
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 1
                        else:
                            if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                                if address(w) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                    mem[mem[64] + 4] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                       value y wei
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx + 2) + cd[36] + 36)]), 1
                                else:
                                    require ext_code.size(address(w))
                                    if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                        call address(w).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), y
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = address(w)
                                    mem[mem[64] + 36] = y
                                    mem[mem[64] + 68] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(w), y, 1
                            else:
                                if address(w) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                    mem[mem[64] + 4] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapEtherToToken(address arg1, uint256 arg2) with:
                                       value y wei
                                         gas gas_remaining wei
                                        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 1
                                else:
                                    require ext_code.size(address(w))
                                    if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                        call address(w).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), y
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[mem[64] + 4] = address(w)
                                    mem[mem[64] + 36] = y
                                    mem[mem[64] + 68] = 1
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).swapTokenToEther(address arg1, uint256 arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(w), y, 1
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    require idx + 1 < ('cd', 36).length
                    require idx + 2 < ('cd', 36).length
                    require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx + 1) + cd[36] + 36)]).0xfc0c546a with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(w):
                        if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                            _677 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_677]
                            mem[_677 + 32] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            require 1 < mem[_677]
                            mem[_677 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_677]
                            mem[_677 + 96] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                            mem[_677 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                            mem[_677 + 164] = y
                            mem[_677 + 196] = 1
                            mem[_677 + 132] = 96
                            mem[_677 + 228] = mem[_677]
                            s = 0
                            while s < 32 * mem[_677]:
                                mem[_677 + s + 260] = mem[_677 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value y wei
                                 gas gas_remaining wei
                                args 96, y, 1, mem[_677 + 228 len (32 * mem[_677]) + 32]
                            mem[_677 + 128] = ext_call.return_data[0]
                        else:
                            _679 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_679]
                            mem[_679 + 32] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            require 1 < mem[_679]
                            mem[_679 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_679]
                            mem[_679 + 96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            mem[_679 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                            mem[_679 + 164] = y
                            mem[_679 + 196] = 1
                            mem[_679 + 132] = 96
                            mem[_679 + 228] = mem[_679]
                            s = 0
                            while s < 32 * mem[_679]:
                                mem[_679 + s + 260] = mem[_679 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                            call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                               value y wei
                                 gas gas_remaining wei
                                args 96, y, 1, mem[_679 + 228 len (32 * mem[_679]) + 32]
                            mem[_679 + 128] = ext_call.return_data[0]
                    else:
                        if address(cd[((32 * idx + 2) + cd[36] + 36)]):
                            _673 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_673]
                            mem[_673 + 32] = address(w)
                            require 1 < mem[_673]
                            mem[_673 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_673]
                            mem[_673 + 96] = address(cd[((32 * idx + 2) + cd[36] + 36)])
                            if address(w) == 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315:
                                mem[_673 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_673 + 164] = y
                                mem[_673 + 196] = 1
                                mem[_673 + 132] = 96
                                mem[_673 + 228] = mem[_673]
                                s = 0
                                while s < 32 * mem[_673]:
                                    mem[_673 + s + 260] = mem[_673 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_673 + 228 len (32 * mem[_673]) + 32]
                            else:
                                require ext_code.size(address(w))
                                if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                call address(w).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 1) + cd[36] + 36)]), y
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_673 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_673 + 164] = y
                                mem[_673 + 196] = 1
                                mem[_673 + 132] = 96
                                mem[_673 + 228] = mem[_673]
                                s = 0
                                while s < 32 * mem[_673]:
                                    mem[_673 + s + 260] = mem[_673 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_673 + 228 len (32 * mem[_673]) + 32]
                            mem[_673 + 128] = ext_call.return_data[0]
                        else:
                            _675 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            require 0 < mem[_675]
                            mem[_675 + 32] = address(w)
                            require 1 < mem[_675]
                            mem[_675 + 64] = address(ext_call.return_data[0])
                            require 2 < mem[_675]
                            mem[_675 + 96] = 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315
                            if address(w) == 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315:
                                mem[_675 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_675 + 164] = y
                                mem[_675 + 196] = 1
                                mem[_675 + 132] = 96
                                mem[_675 + 228] = mem[_675]
                                s = 0
                                while s < 32 * mem[_675]:
                                    mem[_675 + s + 260] = mem[_675 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                   value y wei
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_675 + 228 len (32 * mem[_675]) + 32]
                            else:
                                require ext_code.size(address(w))
                                if address(w) == 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c:
                                    call address(w).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                call address(w).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((32 * idx + 1) + cd[36] + 36)]), y
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_675 + 128] = 0xf0843ba900000000000000000000000000000000000000000000000000000000
                                mem[_675 + 164] = y
                                mem[_675 + 196] = 1
                                mem[_675 + 132] = 96
                                mem[_675 + 228] = mem[_675]
                                s = 0
                                while s < 32 * mem[_675]:
                                    mem[_675 + s + 260] = mem[_675 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((32 * idx + 1) + cd[36] + 36)]))
                                call address(cd[((32 * idx + 1) + cd[36] + 36)]).quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args 96, y, 1, mem[_675 + 228 len (32 * mem[_675]) + 32]
                            mem[_675 + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 3
                t = cd[((32 * idx + 2) + cd[36] + 36)]
                w = cd[((32 * idx + 2) + cd[36] + 36)]
                x = cd[((32 * idx) + cd[36] + 36)]
                x = ext_call.return_data[0]
                y = ext_call.return_data[0]
                continue 
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'Lossless'
}



}
