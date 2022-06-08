contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_6b5adc72(?)
#  - sub_f248bd8b(?)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
mapping of address stor5;
mapping of uint256 stor6;

function _fallback() payable {
  stop
}

function getPrice(string arg1) {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).0x524f3889 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    mem[64] = ceil32(arg2.length) + 160
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[64] = ceil32(arg2.length) + 224
            mem[ceil32(arg2.length) + 160] = 11
            mem[ceil32(arg2.length) + 192] = 'eth_mainnet'
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == address(stor1):
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                require stor5[arg1]
                if stor6[arg1] != 1:
                    mem[0] = arg1
                    mem[32] = 5
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= '0':
                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                require idx < arg2.length
                                idx = idx + 1
                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                continue 
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_code.size(stor5[arg1])
                    call stor5[arg1].0xc01f377f with:
                         gas gas_remaining wei
                        args s
                else:
                    mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                    require ext_code.size(stor5[arg1])
                    call stor5[arg1].0x5d0847eb with:
                         gas gas_remaining wei
                        args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
            else:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
                require stor5[arg1]
                if stor6[arg1] != 1:
                    mem[0] = arg1
                    mem[32] = 5
                    idx = 0
                    s = 0
                    while idx < arg2.length:
                        require idx < arg2.length
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= '0':
                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                require idx < arg2.length
                                idx = idx + 1
                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                continue 
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_code.size(stor5[arg1])
                    call stor5[arg1].0xc01f377f with:
                         gas gas_remaining wei
                        args s
                else:
                    mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                    mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                    var52001 = arg2.length + ceil32(arg2.length) + 288
                    var52003 = 8
                    require ext_code.size(stor5[arg1])
                    call stor5[arg1].0x5d0847eb with:
                         gas gas_remaining wei
                        args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 160] = 12
                mem[ceil32(arg2.length) + 192] = 'eth_ropsten3'
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == address(stor1):
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require stor5[arg1]
                    if stor6[arg1] != 1:
                        mem[0] = arg1
                        mem[32] = 5
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) >= '0':
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                            idx = idx + 1
                            s = s
                            continue 
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0xc01f377f with:
                             gas gas_remaining wei
                            args s
                    else:
                        mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0x5d0847eb with:
                             gas gas_remaining wei
                            args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                else:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require stor5[arg1]
                    if stor6[arg1] != 1:
                        mem[0] = arg1
                        mem[32] = 5
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) >= '0':
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                            idx = idx + 1
                            s = s
                            continue 
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0xc01f377f with:
                             gas gas_remaining wei
                            args s
                    else:
                        mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                        var55001 = arg2.length + ceil32(arg2.length) + 288
                        var55003 = 8
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0x5d0847eb with:
                             gas gas_remaining wei
                            args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 160] = 9
                    mem[ceil32(arg2.length) + 192] = 'eth_kovan'
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(stor1):
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor5[arg1]
                        if stor6[arg1] != 1:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = 0
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) >= '0':
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                idx = idx + 1
                                s = s
                                continue 
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0xc01f377f with:
                                 gas gas_remaining wei
                                args s
                        else:
                            mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                            mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0x5d0847eb with:
                                 gas gas_remaining wei
                                args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                    else:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor5[arg1]
                        if stor6[arg1] != 1:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = 0
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) >= '0':
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                idx = idx + 1
                                s = s
                                continue 
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0xc01f377f with:
                                 gas gas_remaining wei
                                args s
                        else:
                            mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                            mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                            var58001 = arg2.length + ceil32(arg2.length) + 288
                            var58003 = 8
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0x5d0847eb with:
                                 gas gas_remaining wei
                                args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != address(stor1):
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor5[arg1]
                        if stor6[arg1] != 1:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = 0
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) >= '0':
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                idx = idx + 1
                                s = s
                                continue 
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0xc01f377f with:
                                 gas gas_remaining wei
                                args s
                        else:
                            mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                            mem[arg2.length + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192] or mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0x5d0847eb with:
                                 gas gas_remaining wei
                                args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 160] = 11
                        mem[ceil32(arg2.length) + 192] = 'eth_rinkeby'
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] == address(stor1):
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require stor5[arg1]
                            if stor6[arg1] != 1:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) >= '0':
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0xc01f377f with:
                                     gas gas_remaining wei
                                    args s
                            else:
                                mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0x5d0847eb with:
                                     gas gas_remaining wei
                                    args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                        else:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require stor5[arg1]
                            if stor6[arg1] != 1:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) >= '0':
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0xc01f377f with:
                                     gas gas_remaining wei
                                    args s
                            else:
                                mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                                var61001 = arg2.length + ceil32(arg2.length) + 288
                                var61003 = 8
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0x5d0847eb with:
                                     gas gas_remaining wei
                                    args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
    else:
        if ext_code.size(stor0):
            call stor0.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != address(stor1):
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
            require stor5[arg1]
            if stor6[arg1] != 1:
                mem[0] = arg1
                mem[32] = 5
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            require idx < arg2.length
                            idx = idx + 1
                            s = (10 * s) + mem[idx + 128 len 1] - 48
                            continue 
                    idx = idx + 1
                    s = s
                    continue 
                require ext_code.size(stor5[arg1])
                call stor5[arg1].0xc01f377f with:
                     gas gas_remaining wei
                    args s
            else:
                mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192] or mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                require ext_code.size(stor5[arg1])
                call stor5[arg1].0x5d0847eb with:
                     gas gas_remaining wei
                    args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192 len arg2.length % 32]) == sha3(uint64('approved', 0)))
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 160] = 11
                mem[ceil32(arg2.length) + 192] = 'eth_mainnet'
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == address(stor1):
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require stor5[arg1]
                    if stor6[arg1] != 1:
                        mem[0] = arg1
                        mem[32] = 5
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) >= '0':
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                            idx = idx + 1
                            s = s
                            continue 
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0xc01f377f with:
                             gas gas_remaining wei
                            args s
                    else:
                        mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0x5d0847eb with:
                             gas gas_remaining wei
                            args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                else:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.sender == ext_call.return_data[12 len 20]
                    require stor5[arg1]
                    if stor6[arg1] != 1:
                        mem[0] = arg1
                        mem[32] = 5
                        idx = 0
                        s = 0
                        while idx < arg2.length:
                            require idx < arg2.length
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) >= '0':
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    require idx < arg2.length
                                    idx = idx + 1
                                    s = (10 * s) + mem[idx + 128 len 1] - 48
                                    continue 
                            idx = idx + 1
                            s = s
                            continue 
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0xc01f377f with:
                             gas gas_remaining wei
                            args s
                    else:
                        mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                        mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                        mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                        var55001 = arg2.length + ceil32(arg2.length) + 288
                        var55003 = 8
                        require ext_code.size(stor5[arg1])
                        call stor5[arg1].0x5d0847eb with:
                             gas gas_remaining wei
                            args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 160] = 12
                    mem[ceil32(arg2.length) + 192] = 'eth_ropsten3'
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[12 len 20] == address(stor1):
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor5[arg1]
                        if stor6[arg1] != 1:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = 0
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) >= '0':
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                idx = idx + 1
                                s = s
                                continue 
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0xc01f377f with:
                                 gas gas_remaining wei
                                args s
                        else:
                            mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                            mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0x5d0847eb with:
                                 gas gas_remaining wei
                                args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                    else:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.sender == ext_call.return_data[12 len 20]
                        require stor5[arg1]
                        if stor6[arg1] != 1:
                            mem[0] = arg1
                            mem[32] = 5
                            idx = 0
                            s = 0
                            while idx < arg2.length:
                                require idx < arg2.length
                                require idx < arg2.length
                                if Mask(8, 248, mem[idx + 128]) >= '0':
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        require idx < arg2.length
                                        idx = idx + 1
                                        s = (10 * s) + mem[idx + 128 len 1] - 48
                                        continue 
                                idx = idx + 1
                                s = s
                                continue 
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0xc01f377f with:
                                 gas gas_remaining wei
                                args s
                        else:
                            mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                            mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                            mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                            var58001 = arg2.length + ceil32(arg2.length) + 288
                            var58003 = 8
                            require ext_code.size(stor5[arg1])
                            call stor5[arg1].0x5d0847eb with:
                                 gas gas_remaining wei
                                args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 160] = 9
                        mem[ceil32(arg2.length) + 192] = 'eth_kovan'
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] == address(stor1):
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require stor5[arg1]
                            if stor6[arg1] != 1:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) >= '0':
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0xc01f377f with:
                                     gas gas_remaining wei
                                    args s
                            else:
                                mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0x5d0847eb with:
                                     gas gas_remaining wei
                                    args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                        else:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require stor5[arg1]
                            if stor6[arg1] != 1:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) >= '0':
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0xc01f377f with:
                                     gas gas_remaining wei
                                    args s
                            else:
                                mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                                var61001 = arg2.length + ceil32(arg2.length) + 288
                                var61003 = 8
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0x5d0847eb with:
                                     gas gas_remaining wei
                                    args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != address(stor1):
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.sender == ext_call.return_data[12 len 20]
                            require stor5[arg1]
                            if stor6[arg1] != 1:
                                mem[0] = arg1
                                mem[32] = 5
                                idx = 0
                                s = 0
                                while idx < arg2.length:
                                    require idx < arg2.length
                                    require idx < arg2.length
                                    if Mask(8, 248, mem[idx + 128]) >= '0':
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            require idx < arg2.length
                                            idx = idx + 1
                                            s = (10 * s) + mem[idx + 128 len 1] - 48
                                            continue 
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0xc01f377f with:
                                     gas gas_remaining wei
                                    args s
                            else:
                                mem[ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                mem[arg2.length + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192] or mem[ceil32(arg2.length) + floor32(arg2.length) + 192 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                                require ext_code.size(stor5[arg1])
                                call stor5[arg1].0x5d0847eb with:
                                     gas gas_remaining wei
                                    args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 160] = 11
                            mem[ceil32(arg2.length) + 192] = 'eth_rinkeby'
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] == address(stor1):
                                require ext_code.size(address(stor1))
                                call address(stor1).cbAddress() with:
                                     gas gas_remaining wei
                                mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require msg.sender == ext_call.return_data[12 len 20]
                                require stor5[arg1]
                                if stor6[arg1] != 1:
                                    mem[0] = arg1
                                    mem[32] = 5
                                    idx = 0
                                    s = 0
                                    while idx < arg2.length:
                                        require idx < arg2.length
                                        require idx < arg2.length
                                        if Mask(8, 248, mem[idx + 128]) >= '0':
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                                continue 
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require ext_code.size(stor5[arg1])
                                    call stor5[arg1].0xc01f377f with:
                                         gas gas_remaining wei
                                        args s
                                else:
                                    mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                                    require ext_code.size(stor5[arg1])
                                    call stor5[arg1].0x5d0847eb with:
                                         gas gas_remaining wei
                                        args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
                            else:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                require ext_code.size(address(stor1))
                                call address(stor1).cbAddress() with:
                                     gas gas_remaining wei
                                mem[ceil32(arg2.length) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require msg.sender == ext_call.return_data[12 len 20]
                                require stor5[arg1]
                                if stor6[arg1] != 1:
                                    mem[0] = arg1
                                    mem[32] = 5
                                    idx = 0
                                    s = 0
                                    while idx < arg2.length:
                                        require idx < arg2.length
                                        require idx < arg2.length
                                        if Mask(8, 248, mem[idx + 128]) >= '0':
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                require idx < arg2.length
                                                idx = idx + 1
                                                s = (10 * s) + mem[idx + 128 len 1] - 48
                                                continue 
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    require ext_code.size(stor5[arg1])
                                    call stor5[arg1].0xc01f377f with:
                                         gas gas_remaining wei
                                        args s
                                else:
                                    mem[ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 288 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
                                    mem[arg2.length + ceil32(arg2.length) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                                    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] = 256^(-(arg2.length % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256] or mem[ceil32(arg2.length) + floor32(arg2.length) + 256 len -(arg2.length % 32) + 32], mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                                    var64001 = arg2.length + ceil32(arg2.length) + 288
                                    var64003 = 8
                                    require ext_code.size(stor5[arg1])
                                    call stor5[arg1].0x5d0847eb with:
                                         gas gas_remaining wei
                                        args (sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 256 len arg2.length % 32]) == sha3(uint64('approved', 0)))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfaf58e37: Array(len=arg2.length, data=arg2[all])
    emit 0x292fac14: arg1, 64, 0
    stor5[arg1] = 0
}



}
