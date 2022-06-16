contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_588a06a2(?)
#  - buy(uint256 arg1)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address managerAddress;
array of struct sub_226b876c;
mapping of address stor9;
mapping of uint256 balanceOf;
mapping of address stor11;
mapping of uint8 stor12;
uint256 sub_5c2d9874;

function sub_226b876c(?) {
    require arg1 < sub_226b876c.length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'sub_226b876c', 8) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'sub_226b876c', 8) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'sub_226b876c', 8) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_226b876c[arg1].field_0, 
           sub_226b876c[arg1].field_0,
           bool(sub_226b876c[arg1].field_48),
           bool(sub_226b876c[arg1].field_56),
           Array(len=stor[(3 * arg1) + ('name', 'sub_226b876c', 8) + 1].length, data=mem[128 len stor[(3 * arg1) + ('name', 'sub_226b876c', 8) + 1].length]),
           sub_226b876c[arg1].field_512
}

function manager() {
    return managerAddress
}

function sub_5c2d9874(?) {
    return sub_5c2d9874
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_198c1a8f(?) {
    return (sub_226b876c.length - 1)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function ownerOf(uint256 arg1) {
    require arg1
    require arg1 < sub_226b876c.length
    if not stor9[arg1]:
        return managerAddress
    return stor9[arg1]
}

function getContractBalance() {
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the manager can call this method'
    return eth.balance(this.address)
}

function withdraw(uint256 arg1) {
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the manager can call this method'
    if arg1 > eth.balance(this.address):
        revert with 0, 'Cannot overdraw the contract'
    call managerAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_ff1665eb(?) {
    if not sub_5c2d9874:
        return ''
    if sub_5c2d9874:
        mem[128 len 32 * sub_5c2d9874] = code.data[16511 len 32 * sub_5c2d9874]
    idx = 1
    s = 0
    while idx <= sub_226b876c.length - 1:
        require idx < sub_226b876c.length
        mem[0] = 8
        if not sub_226b876c[idx].field_48:
            idx = idx + 1
            s = s
            continue 
        require s < sub_5c2d9874
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_5c2d9874) + 192 len floor32(sub_5c2d9874)] = mem[128 len floor32(sub_5c2d9874)]
    return Array(len=sub_5c2d9874, data=mem[128 len floor32(sub_5c2d9874)], mem[(32 * sub_5c2d9874) + floor32(sub_5c2d9874) + 192 len (32 * sub_5c2d9874) - floor32(sub_5c2d9874)]), 
}

function sub_8cfa141f(?) {
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[16511 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= sub_226b876c.length - 1:
        mem[0] = idx
        mem[32] = 9
        if stor9[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function sub_545e0d31(?) {
    require arg2
    if (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 >= 0:
        if not arg5:
            if arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18 <= arg1:
                return (arg1 - (arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18))
        else:
            if arg1 + (arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18) >= arg1:
                return (arg1 + (arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18))
    else:
        if not arg5:
            if arg1 + (-1 * arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18) >= arg1:
                return (arg1 + (-1 * arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18))
        else:
            if -1 * arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18 <= arg1:
                return (arg1 - (-1 * arg1 * (1000 * 10^18 * arg3) - (1000 * 10^18 * arg2) / arg2 * arg4 / 100 / 1000 * 10^18))
    return 0
}

function sub_dda8f217(?) {
    require arg2
    require arg2 < sub_226b876c.length
    require arg2 < sub_226b876c.length
    if not arg2:
        revert with 0, 'Not a valid stockId'
    if arg2 >= sub_226b876c.length:
        revert with 0, 'Not a valid stockId'
    if not stor9[arg2]:
        if managerAddress != msg.sender:
            if not stor12[stor7][address(msg.sender)]:
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
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'Request is not from the owner of the stock'
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
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor1) != ext_call.return_data[12 len 20]:
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
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != msg.sender:
                                revert with 0, 'Request is not from the owner of the stock'
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
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(stor1) != ext_call.return_data[12 len 20]:
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    revert with 0, 'Request is not from the owner of the stock'
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
                                    if address(stor1) != ext_call.return_data[12 len 20]:
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Request is not from the owner of the stock'
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
                                    if address(stor1) != ext_call.return_data[12 len 20]:
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        revert with 0, 'Request is not from the owner of the stock'
                else:
                    if ext_code.size(stor0):
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Request is not from the owner of the stock'
                    else:
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
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor1) != ext_call.return_data[12 len 20]:
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
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != msg.sender:
                                revert with 0, 'Request is not from the owner of the stock'
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
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(stor1) != ext_call.return_data[12 len 20]:
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    revert with 0, 'Request is not from the owner of the stock'
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
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(stor1) != ext_call.return_data[12 len 20]:
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        revert with 0, 'Request is not from the owner of the stock'
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
                                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Request is not from the owner of the stock'
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
                                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            revert with 0, 'Request is not from the owner of the stock'
                ('eq', ('ext_call.return_data', 12, 20), 'msg.sender')
        if not arg1:
            if not sub_226b876c[arg2].field_48:
                revert with 0, 'Stock not for sale'
            stor11[arg2] = 0
            sub_226b876c[arg2].field_48 = 0
            sub_5c2d9874--
        else:
            if sub_226b876c[arg2].field_48:
                revert with 0, 'Stock already for sale'
            stor11[arg2] = this.address
            sub_226b876c[arg2].field_48 = 1
            sub_5c2d9874++
            emit Approval(managerAddress, address(this.address), arg2);
    else:
        if stor9[arg2] != msg.sender:
            if not stor12[stor9[arg2]][address(msg.sender)]:
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
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'Request is not from the owner of the stock'
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
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor1) != ext_call.return_data[12 len 20]:
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
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != msg.sender:
                                revert with 0, 'Request is not from the owner of the stock'
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
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(stor1) != ext_call.return_data[12 len 20]:
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    revert with 0, 'Request is not from the owner of the stock'
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
                                    if address(stor1) != ext_call.return_data[12 len 20]:
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Request is not from the owner of the stock'
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
                                    if address(stor1) != ext_call.return_data[12 len 20]:
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        revert with 0, 'Request is not from the owner of the stock'
                else:
                    if ext_code.size(stor0):
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Request is not from the owner of the stock'
                    else:
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
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor1) != ext_call.return_data[12 len 20]:
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
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[12 len 20] != msg.sender:
                                revert with 0, 'Request is not from the owner of the stock'
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
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(stor1) != ext_call.return_data[12 len 20]:
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
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    revert with 0, 'Request is not from the owner of the stock'
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
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(stor1) != ext_call.return_data[12 len 20]:
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
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        revert with 0, 'Request is not from the owner of the stock'
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
                                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Request is not from the owner of the stock'
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
                                        if address(stor1) != ext_call.return_data[12 len 20]:
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
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            revert with 0, 'Request is not from the owner of the stock'
                ('eq', ('ext_call.return_data', 12, 20), 'msg.sender')
        if not arg1:
            if not sub_226b876c[arg2].field_48:
                revert with 0, 'Stock not for sale'
            stor11[arg2] = 0
            sub_226b876c[arg2].field_48 = 0
            sub_5c2d9874--
        else:
            if sub_226b876c[arg2].field_48:
                revert with 0, 'Stock already for sale'
            stor11[arg2] = this.address
            sub_226b876c[arg2].field_48 = 1
            sub_5c2d9874++
            emit Approval(stor9[arg2], address(this.address), arg2);
}



}
