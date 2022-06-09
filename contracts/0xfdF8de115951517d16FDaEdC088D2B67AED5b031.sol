contract main {




// =====================  Runtime code  =====================


#
#  - sub_4f0e3472(?)
#
address owner;
address stor1;
address stor2;
uint256 stor2;
array of uint256 stor3;
uint256 min_bet;
uint256 max_bet;
uint256 rate;
address sub_51220e7eAddress;
mapping of struct games;
mapping of address sub_2060ebea;

function sub_2060ebea(?) {
    return sub_2060ebea[arg1]
}

function rate() {
    return rate
}

function sub_51220e7e(?) {
    return sub_51220e7eAddress
}

function max_bet() {
    return max_bet
}

function owner() {
    return owner
}

function min_bet() {
    return min_bet
}

function games(bytes32 arg1) {
    return games[arg1].field_0, games[arg1].field_256, bool(games[arg1].field_512)
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_80b1bb1d(?) {
    return (arg1 * rate / 100)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function setRate(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    rate = arg1
}

function setMaxBet(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    max_bet = arg1
}

function setMinBet(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    min_bet = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f8cb0d90(?) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not sub_51220e7eAddress:
        sub_51220e7eAddress = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0, 'Zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function play(bool arg1) payable {
    require ext_code.size(this.address)
    call this.address.0x4f0e3472 with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not arg1:
        revert with 0, 'Zero address'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Insufficient funds'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(arg2, arg1);
}

function __callback(bytes32 arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[64] = ceil32(arg2.length) + 192
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            bool(stor3.length) = 0
            stor3.length.field_1 = 11
            stor3.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(stor2) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                bool(stor3.length) = 0
                stor3.length.field_1 = 12
                stor3.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(stor2) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 9
                    stor3.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(stor2) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    else:
        if ext_code.size(stor1):
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(stor2) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining wei
            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[64] = ceil32(arg2.length) + 192
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(stor2) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining wei
                mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[64] = ceil32(arg2.length) + 192
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(stor2) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining wei
                    mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[64] = ceil32(arg2.length) + 192
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(stor2) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining wei
                        mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor2) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[64] = ceil32(arg2.length) + 192
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(stor2) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor1)
                                call stor1.getAddress() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining wei
                            mem[ceil32(arg2.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Permission denied'
    mem[0] = arg1
    mem[32] = 10
    if games[arg1].field_256 <= 0:
        revert with 0, 'Game not found'
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    if bool(games[arg1].field_512) != s == 1:
        emit 0xb67a9af0: games[arg1].field_256, bool(games[arg1].field_512), s == 1, 0, arg1, games[arg1].field_0
    else:
        emit 0xb67a9af0: games[arg1].field_256, bool(games[arg1].field_512), s == 1, games[arg1].field_256 * rate / 100, arg1, games[arg1].field_0
        if games[arg1].field_256 * rate / 100 > 0:
            call games[arg1].field_0 with:
               value games[arg1].field_256 * rate / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_2060ebea[stor10[arg1].field_0]:
                call sub_2060ebea[stor10[arg1].field_0] with:
                   value games[arg1].field_256 * rate / 100 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if sub_51220e7eAddress:
        call sub_51220e7eAddress with:
           value games[arg1].field_256 / 100 wei
             gas 45000 wei
    games[arg1].field_0 = 0
    games[arg1].field_256 = 0
    games[arg1].field_512 = 0
}



}
