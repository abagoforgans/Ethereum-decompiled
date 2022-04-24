contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;

function _fallback() payable {
    stor0 = 0x70a6d91d037843b899b4907d8849124724f56b7
    require not msg.value
    stor4 = block.number
    stor1 = msg.sender
    stor2 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[271 len 2975]
}



// =====================  Runtime code  =====================


address payoutAddress;
address owner;
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

function sub_712b46b0(?) {
    return sub_712b46b0
}

function owner() {
    return owner
}

function sub_b4d65d3e(?) {
    return sub_b4d65d3eAddress
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

function setKittyContractAddress(address arg1) {
    require msg.sender == owner
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
        mem[32] = 3
        sub_193a5c49[idx] = 0
        mem[0] = sha3(idx, 3)
        s = sha3(sha3(idx, 3))
        while sha3(sha3(idx, 3)) + sub_193a5c49[idx] > s:
            stor[s] = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}

function sub_057609c2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _35 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _37 = mem[(32 * idx + 1) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _35
        require ext_code.size(sub_b4d65d3eAddress)
        call sub_b4d65d3eAddress.isPregnant(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _35
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = _37
            s = _35
            idx = idx + 2
            s = s
            continue 
        if block.number < _37:
            mem[32] = 3
            sub_193a5c49[_37]++
            if not sub_193a5c49[_37] <= sub_193a5c49[_37] + 1:
                t = sha3(sha3(_37, 3)) + sub_193a5c49[_37] + 1
                while sha3(sha3(_37, 3)) + sub_193a5c49[_37] > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
            mem[0] = sha3(_37, 3)
            sub_193a5c49[_37][sub_193a5c49[_37]] = _35
            s = _37
            s = _35
            idx = idx + 2
            s = s
            continue 
        if s >= 8:
            mem[32] = 3
            sub_193a5c49[_37]++
            if not sub_193a5c49[_37] <= sub_193a5c49[_37] + 1:
                t = sha3(sha3(_37, 3)) + sub_193a5c49[_37] + 1
                while sha3(sha3(_37, 3)) + sub_193a5c49[_37] > t:
                    stor[t] = 0
                    t = t + 1
                    continue 
            mem[0] = sha3(_37, 3)
            sub_193a5c49[_37][sub_193a5c49[_37]] = _35
            s = _37
            s = _35
            idx = idx + 2
            s = s
            continue 
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _35
        require ext_code.size(sub_b4d65d3eAddress)
        call sub_b4d65d3eAddress.giveBirth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _35
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = _37
        s = _35
        idx = idx + 2
        s = s + 1
        continue 
    if s <= 7:
        if sub_712b46b0 != block.number:
            t = 0
            idx = sub_712b46b0
            while idx <= block.number:
                mem[0] = idx
                mem[32] = 3
                t = 0
                t = 0
                u = s
                while t < sub_193a5c49[idx]:
                    mem[0] = sha3(idx, 3)
                    mem[(32 * arg1.length) + 160] = 0
                    mem[(32 * arg1.length) + 132] = sub_193a5c49[idx][t]
                    require ext_code.size(sub_b4d65d3eAddress)
                    call sub_b4d65d3eAddress.isPregnant(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args sub_193a5c49[idx][t]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        t = sub_193a5c49[idx][t]
                        t = t + 1
                        u = u
                        continue 
                    mem[(32 * arg1.length) + 160] = 0
                    mem[(32 * arg1.length) + 132] = sub_193a5c49[idx][t]
                    require ext_code.size(sub_b4d65d3eAddress)
                    call sub_b4d65d3eAddress.giveBirth(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args sub_193a5c49[idx][t]
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    require ext_call.success
                    if u + 1 <= 7:
                        t = sub_193a5c49[idx][t]
                        t = t + 1
                        u = u + 1
                        continue 
                    sub_712b46b0 = idx
                t = sha3(idx, 3)
                idx = idx + 1
                continue 
        sub_712b46b0 = block.number
}



}
