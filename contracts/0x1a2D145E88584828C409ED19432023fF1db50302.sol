contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;
address stor4;
uint8 stor16B6;
uint8 stor30C4;
uint8 stor62F9;
uint8 stor71A6;
uint8 storA72D;
uint8 storC995;
uint8 storDAA7;
uint8 storE17E;
uint8 storEBCC;
uint8 storED9F;
uint8 storFDB5;

function _fallback() payable {
    stor0 = 0x70a6d91d037843b899b4907d8849124724f56b7
    require not msg.value
    stor1 = msg.sender
    storDAA7 = 1
    stor62F9 = 1
    storE17E = 1
    storC995 = 1
    stor71A6 = 1
    stor30C4 = 1
    storA72D = 1
    storED9F = 1
    storFDB5 = 1
    storEBCC = 1
    stor16B6 = 1
    require stor1 == msg.sender
    stor3 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor4 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[700 len 1617]
}



// =====================  Runtime code  =====================


address payoutAddress;
address owner;
mapping of uint8 stor2;
address sub_ea696cacAddress;
address sub_b4d65d3eAddress;

function whiteList(address arg1) {
    return bool(stor2[arg1])
}

function payoutAddress() {
    return payoutAddress
}

function owner() {
    return owner
}

function sub_b4d65d3e(?) {
    return sub_b4d65d3eAddress
}

function sub_ea696cac(?) {
    return sub_ea696cacAddress
}

function _fallback() payable {
  stop
}

function setPayoutAddress(address arg1) {
    require owner == msg.sender
    payoutAddress = arg1
}

function setWhitelistAddress(address arg1, bool arg2) {
    require owner == msg.sender
    stor2[address(arg1)] = uint8(arg2)
}

function setKittyContractAddress(address arg1) {
    require owner == msg.sender
    sub_ea696cacAddress = arg1
    sub_b4d65d3eAddress = arg1
}

function sendEtherToOwner() {
    require owner == msg.sender
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_67712ff2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 == bool(stor2[address(msg.sender)])
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        if arg2 < mem[(32 * idx) + 157 len 3]:
            s = s
            t = mem[(32 * idx) + 157 len 3]
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        t = 0
        t = 0
        s = 0
        t = 0
        u = mem[(32 * idx) + 128 len 27]
        while s < 9:
            if gas_remaining < 300000:
                if eth.balance(this.address) > 0:
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            if u % 16777216:
                mem[(32 * arg1.length) + 128] = 0x88c2a0bf00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 132] = u % 16777216
                call sub_ea696cacAddress.giveBirth(uint256 rg1) with:
                     gas gas_remaining - 25710 wei
                    args (u % 16777216)
                if ext_call.success:
                    t = ext_call.success
                    t = u % 16777216
                    s = s + 1
                    t = t
                    u = Mask(232, 24, u) >> 24
                    continue 
                if (_14 % 16777216) + 2 > arg2:
                    if (_14 % 16777216) + 1 > arg2:
                        t = ext_call.success
                        t = u % 16777216
                        s = s + 1
                        t = t + 1
                        u = Mask(232, 24, u) >> 24
                        continue 
                    if t + 1 <= 2:
                        t = ext_call.success
                        t = u % 16777216
                        s = s + 1
                        t = t + 1
                        u = Mask(232, 24, u) >> 24
                        continue 
            s = 1
            t = _14 % 16777216
            t = _14
            idx = idx + 1
            continue 
        s = 1
        t = _14 % 16777216
        t = _14
        idx = idx + 1
        continue 
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function sub_d4d8219d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 == bool(stor2[address(msg.sender)])
    require 1 == bool(stor2[address(msg.sender)])
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        if block.number < mem[(32 * idx) + 157 len 3]:
            s = s
            t = mem[(32 * idx) + 157 len 3]
            t = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        t = 0
        t = 0
        s = 0
        t = 0
        u = mem[(32 * idx) + 128 len 27]
        while s < 9:
            if gas_remaining < 300000:
                if eth.balance(this.address) > 0:
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            if u % 16777216:
                mem[(32 * arg1.length) + 128] = 0x88c2a0bf00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 132] = u % 16777216
                call sub_ea696cacAddress.giveBirth(uint256 rg1) with:
                     gas gas_remaining - 25710 wei
                    args (u % 16777216)
                if ext_call.success:
                    t = ext_call.success
                    t = u % 16777216
                    s = s + 1
                    t = t
                    u = Mask(232, 24, u) >> 24
                    continue 
                if (_15 % 16777216) + 2 > block.number:
                    if (_15 % 16777216) + 1 > block.number:
                        t = ext_call.success
                        t = u % 16777216
                        s = s + 1
                        t = t + 1
                        u = Mask(232, 24, u) >> 24
                        continue 
                    if t + 1 <= 2:
                        t = ext_call.success
                        t = u % 16777216
                        s = s + 1
                        t = t + 1
                        u = Mask(232, 24, u) >> 24
                        continue 
            s = 1
            t = _15 % 16777216
            t = _15
            idx = idx + 1
            continue 
        s = 1
        t = _15 % 16777216
        t = _15
        idx = idx + 1
        continue 
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
