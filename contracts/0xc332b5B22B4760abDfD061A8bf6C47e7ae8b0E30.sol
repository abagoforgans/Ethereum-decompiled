contract main {


// =======================  Init code  ======================


address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor7;

function _fallback() payable {
    stor2 = 0x70a6d91d037843b899b4907d8849124724f56b7
    require not msg.value
    stor7 = block.number
    stor3 = msg.sender
    stor4 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor5 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[357 len 3657]
}



// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;
address payoutAddress;
address owner;
address sub_ea696cacAddress;
address sub_b4d65d3eAddress;
array of uint256 sub_193a5c49;
uint256 sub_712b46b0;

function sub_193a5c49(?) {
    require arg2 < sub_193a5c49[arg1]
    return sub_193a5c49[arg1][arg2]
}

function payoutAddress() {
    return payoutAddress
}

function sub_6884329f(?) {
    return stor1.length
}

function sub_712b46b0(?) {
    return sub_712b46b0
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

function sub_5d974a66(?) {
    require msg.sender == owner
    sub_712b46b0 = arg1
}

function setPayoutAddress(address arg1) {
    require msg.sender == owner
    payoutAddress = arg1
}

function sub_b90017d6(?) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function setKittyContractAddress(address arg1) {
    require msg.sender == owner
    sub_ea696cacAddress = arg1
    sub_b4d65d3eAddress = arg1
}

function sendEtherToOwner() {
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_7958d840(?) {
    require msg.sender == owner
    idx = arg1
    while idx < arg2:
        mem[32] = 6
        sub_193a5c49[idx] = 0
        mem[0] = sha3(idx, 6)
        s = sha3(sha3(idx, 6))
        while sha3(sha3(idx, 6)) + sub_193a5c49[idx] > s:
            stor[s] = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_057609c2(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    s = (32 * arg1.length) + 128
    t = 0
    u = 0
    u = 0
    idx = 0
    u = 0
    while idx < arg1.length:
        require idx < mem[96]
        _46 = mem[(32 * idx) + 128]
        require idx + 1 < mem[96]
        _48 = mem[(32 * idx + 1) + 128]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 4] = _46
        require ext_code.size(sub_b4d65d3eAddress)
        call sub_b4d65d3eAddress.isPregnant(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _46
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = s
            t = t
            u = _48
            u = _46
            idx = idx + 2
            u = u
            continue 
        if block.number < _48:
            mem[32] = 6
            sub_193a5c49[_48]++
            if not sub_193a5c49[_48] <= sub_193a5c49[_48] + 1:
                v = sha3(sha3(_48, 6)) + sub_193a5c49[_48] + 1
                while sha3(sha3(_48, 6)) + sub_193a5c49[_48] > v:
                    stor[v] = 0
                    v = v + 1
                    continue 
            mem[0] = sha3(_48, 6)
            sub_193a5c49[_48][sub_193a5c49[_48]] = _46
            s = s
            t = t
            u = _48
            u = _46
            idx = idx + 2
            u = u
            continue 
        if u >= 8:
            mem[32] = 6
            sub_193a5c49[_48]++
            if not sub_193a5c49[_48] <= sub_193a5c49[_48] + 1:
                v = sha3(sha3(_48, 6)) + sub_193a5c49[_48] + 1
                while sha3(sha3(_48, 6)) + sub_193a5c49[_48] > v:
                    stor[v] = 0
                    v = v + 1
                    continue 
            mem[0] = sha3(_48, 6)
            sub_193a5c49[_48][sub_193a5c49[_48]] = _46
            s = s
            t = t
            u = _48
            u = _46
            idx = idx + 2
            u = u
            continue 
        mem[mem[64]] = 0x88c2a0bf00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _46
        call sub_ea696cacAddress.giveBirth(uint256 rg1) with:
             gas gas_remaining - 25710 wei
            args _46
        if ext_call.success:
            s = s
            t = ext_call.success
            u = _48
            u = _46
            idx = idx + 2
            u = u + 1
            continue 
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = _46
        mem[_66 + 32] = block.number
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            s = sha3(0) + (2 * stor0.length + 1)
            while sha3(0) + (2 * stor0.length) > s:
                stor[s] = 0
                stor1[s] = 0
                s = s + 2
                continue 
        mem[0] = 0
        stor0[stor0.length].field_0 = _46
        stor0[stor0.length].field_256 = block.number
        stor1.length++
        s = _66
        t = ext_call.success
        u = _48
        u = _46
        idx = idx + 2
        u = u + 1
        continue 
    if u <= 7:
        if sub_712b46b0 != block.number:
            v = 0
            idx = sub_712b46b0
            while idx <= block.number:
                mem[0] = idx
                mem[32] = 6
                v = 0
                v = 0
                w = s
                x = t
                y = u
                while v < sub_193a5c49[idx]:
                    mem[0] = sha3(idx, 6)
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = sub_193a5c49[idx][v]
                    require ext_code.size(sub_b4d65d3eAddress)
                    call sub_b4d65d3eAddress.isPregnant(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args sub_193a5c49[idx][v]
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        v = sub_193a5c49[idx][v]
                        v = v + 1
                        w = w
                        x = x
                        y = y
                        continue 
                    mem[mem[64]] = 0x88c2a0bf00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_193a5c49[idx][v]
                    call sub_ea696cacAddress.giveBirth(uint256 rg1) with:
                         gas gas_remaining - 25710 wei
                        args sub_193a5c49[idx][v]
                    if ext_call.success:
                        if y + 1 <= 7:
                            v = sub_193a5c49[idx][v]
                            v = v + 1
                            w = w
                            x = ext_call.success
                            y = y + 1
                            continue 
                    else:
                        _119 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_119] = sub_193a5c49[idx][v]
                        mem[_119 + 32] = idx
                        stor0.length++
                        if not stor0.length <= stor0.length + 1:
                            s = sha3(0) + (2 * stor0.length + 1)
                            while sha3(0) + (2 * stor0.length) > s:
                                stor[s] = 0
                                stor1[s] = 0
                                s = s + 2
                                continue 
                        mem[0] = 0
                        stor0[stor0.length].field_0 = sub_193a5c49[idx][v]
                        stor0[stor0.length].field_256 = idx
                        stor1.length++
                        if y + 1 <= 7:
                            v = sub_193a5c49[idx][v]
                            v = v + 1
                            w = _119
                            x = ext_call.success
                            y = y + 1
                            continue 
                    ('gt', ('add', 1, ('var', 7)), 7)
                    sub_712b46b0 = idx
                v = sha3(idx, 6)
                idx = idx + 1
                continue 
        sub_712b46b0 = block.number
}



}
