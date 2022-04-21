contract main {


// =======================  Init code  ======================


address stor0;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;

function _fallback() payable {
    stor12 = 1000 * 10^18
    stor13 = 1
    stor15 = 12 * 10^15
    require not msg.value
    stor0 = msg.sender
    stor9 = code.data[10136 len 20]
    stor10 = 419028 * 3600
    stor11 = 1511308799
    return code.data[239 len 9885]
}



// =====================  Runtime code  =====================


#
#  - updatePrice()
#
address owner;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor4;
array of uint256 stor5;
uint256 dollarCost;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 dollarMultiplier;
uint256 stor13;
uint256 rate;
uint256 minimumCost;
uint256 weiRaised;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function dollarCost() {
    return dollarCost
}

function dollarMultiplier() {
    return dollarMultiplier
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function minimumCost() {
    return minimumCost
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function setICO(address arg1) {
    if owner != msg.sender:
        if stor1 != msg.sender:
            require msg.sender == stor2
    require arg1
    stor2 = arg1
}

function setPreIco(address arg1) {
    if owner != msg.sender:
        if stor1 != msg.sender:
            require msg.sender == stor2
    require arg1
    stor1 = arg1
}

function setDollar(uint256 arg1) {
    if owner != msg.sender:
        if stor1 != msg.sender:
            require msg.sender == stor2
    require arg1 > 0
    dollarCost = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        if stor1 != msg.sender:
            require msg.sender == stor2
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    require block.timestamp <= endTime
    require msg.value >= minimumCost
    require msg.value
    if dollarCost:
        require dollarCost
        require 67 * dollarCost / dollarCost == 67
    rate = 67 * dollarCost / 100
    require rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    if msg.value / rate:
        require msg.value / rate
        require msg.value / rate * 10^stor13 / msg.value / rate == 10^stor13
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5f4dd2d8 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / rate * 10^stor13
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value / rate, msg.sender, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor3:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            mem[0] = 5
            bool(stor5.length) = 0
            stor5.length.field_1 = 11
            stor5.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor5.length + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor3)
            call stor3.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor4) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
            require ext_code.size(address(stor4))
            call address(stor4).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[ceil32(arg2.length) + 224] = arg2.length
            mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
            mem[64] = ceil32(arg2.length) + 224
            mem[ceil32(arg2.length) + 192] = 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                mem[0] = 5
                bool(stor5.length) = 0
                stor5.length.field_1 = 12
                stor5.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor4) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(address(stor4))
                call address(stor4).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[ceil32(arg2.length) + 224] = arg2.length
                mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    mem[0] = 5
                    bool(stor5.length) = 0
                    stor5.length.field_1 = 9
                    stor5.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        stor5[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor4) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                    require ext_code.size(address(stor4))
                    call address(stor4).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[ceil32(arg2.length) + 224] = arg2.length
                    mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor4) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                        require ext_code.size(address(stor4))
                        call address(stor4).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[ceil32(arg2.length) + 128] = 32
                        mem[ceil32(arg2.length) + 160] = arg2.length
                        mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                        mem[64] = ceil32(arg2.length) + 160
                        mem[ceil32(arg2.length) + 128] = 0
                    else:
                        stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        mem[0] = 5
                        bool(stor5.length) = 0
                        stor5.length.field_1 = 11
                        stor5.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            stor5[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor4) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                        require ext_code.size(address(stor4))
                        call address(stor4).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[ceil32(arg2.length) + 224] = arg2.length
                        mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
    else:
        if ext_code.size(stor3):
            require ext_code.size(stor3)
            call stor3.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor4) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
            require ext_code.size(address(stor4))
            call address(stor4).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[ceil32(arg2.length) + 128] = 32
            mem[ceil32(arg2.length) + 160] = arg2.length
            mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
            mem[64] = ceil32(arg2.length) + 160
            mem[ceil32(arg2.length) + 128] = 0
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor3 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                mem[0] = 5
                bool(stor5.length) = 0
                stor5.length.field_1 = 11
                stor5.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor5.length + 31 / 32 > idx:
                    stor5[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor3)
                call stor3.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor4) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(address(stor4))
                call address(stor4).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[ceil32(arg2.length) + 224] = arg2.length
                mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor3 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    mem[0] = 5
                    bool(stor5.length) = 0
                    stor5.length.field_1 = 12
                    stor5.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor5.length + 31 / 32 > idx:
                        stor5[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor3)
                    call stor3.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor4) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                    require ext_code.size(address(stor4))
                    call address(stor4).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[ceil32(arg2.length) + 224] = arg2.length
                    mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor3 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        mem[0] = 5
                        bool(stor5.length) = 0
                        stor5.length.field_1 = 9
                        stor5.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor5.length + 31 / 32 > idx:
                            stor5[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor3)
                        call stor3.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor4) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                        require ext_code.size(address(stor4))
                        call address(stor4).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[ceil32(arg2.length) + 224] = arg2.length
                        mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                        emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor3 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor3 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor3 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor4) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor3)
                                call stor3.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                            require ext_code.size(address(stor4))
                            call address(stor4).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[ceil32(arg2.length) + 128] = 32
                            mem[ceil32(arg2.length) + 160] = arg2.length
                            mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                            mem[64] = ceil32(arg2.length) + 160
                            mem[ceil32(arg2.length) + 128] = 0
                        else:
                            stor3 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            mem[0] = 5
                            bool(stor5.length) = 0
                            stor5.length.field_1 = 11
                            stor5.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor5.length + 31 / 32 > idx:
                                stor5[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor3)
                            call stor3.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor4) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor3)
                                call stor3.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                            require ext_code.size(address(stor4))
                            call address(stor4).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[ceil32(arg2.length) + 224] = arg2.length
                            mem[ceil32(arg2.length) + 256 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                            emit updatedEtherPrice(Array(len=arg2.length, data=arg2[all]));
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
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
    require 1000 * s
    dollarCost = dollarMultiplier / 1000 * s
}



}
