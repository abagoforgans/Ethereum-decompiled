contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
mapping of uint8 stor3;
address stor4;
uint256 stor6;

function _fallback() payable {
    stor0 = 0x70a6d91d037843b899b4907d8849124724f56b7
    require not msg.value
    stor6 = block.number
    stor1 = msg.sender
    stor3[0xd583115e3d95012ba15d10d96b3ba174edec3602] = 1
    stor3[0xf747dccd4d37cf1cd8799b8712e3f9d17adfd2ba] = 1
    stor3[0xc894a5d8972a110ceaeb5d1b1a47c2df3ce55888] = 1
    stor3[0x62ee1b4f17e2d3430c11898e7e129966cc2e9bff] = 1
    stor3[0xc20f22bbe8e583c251df774daa7ce49d1c952072] = 1
    stor3[0xa0766d6103bc41461b95f1df96b5ef684a4d19cb] = 1
    stor3[0xf9e2a7a6bce3b4b650745c2f7442a9b2b370265b] = 1
    stor3[0xc08b67498fd51a9343ff0ed88b7fbf8310183b9f] = 1
    stor3[0x3f19d8763b10a75dc925fdc57b054f50038913a] = 1
    stor3[0x1057072fccac7320ce8190715f306bb5ac0f9d2e] = 1
    stor4 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[1351 len 2649]
}



// =====================  Runtime code  =====================


address payoutAddress;
address owner;
uint256 sub_7794e287;
mapping of uint8 stor3;
address sub_b4d65d3eAddress;
array of uint256 sub_193a5c49;
uint256 sub_712b46b0;

function sub_193a5c49(?) {
    require arg2 < sub_193a5c49[arg1]
    return sub_193a5c49[arg1][arg2]
}

function whiteList(address arg1) {
    return bool(stor3[arg1])
}

function payoutAddress() {
    return payoutAddress
}

function sub_712b46b0(?) {
    return sub_712b46b0
}

function sub_7794e287(?) {
    return sub_7794e287
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

function setWhitelistAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
}

function sendEtherToOwner() {
    call payoutAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_057609c2(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require bool(stor3[address(msg.sender)]) == 1
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx + 1 < arg1.length
        mem[32] = 5
        sub_193a5c49[mem[(32 * idx + 1) + 128]]++
        if not sub_193a5c49[mem[(32 * idx + 1) + 128]] <= sub_193a5c49[mem[(32 * idx + 1) + 128]] + 1:
            s = sha3(sha3(mem[(32 * idx + 1) + 128], 5)) + sub_193a5c49[mem[(32 * idx + 1) + 128]] + 1
            while sha3(sha3(mem[(32 * idx + 1) + 128], 5)) + sub_193a5c49[mem[(32 * idx + 1) + 128]] > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = sha3(mem[(32 * idx + 1) + 128], 5)
        sub_193a5c49[mem[(32 * idx + 1) + 128]][sub_193a5c49[mem[(32 * idx + 1) + 128]]] = mem[(32 * idx) + 128]
        s = mem[(32 * idx + 1) + 128]
        s = mem[(32 * idx) + 128]
        idx = idx + 2
        continue 
    s = 0
    idx = sub_712b46b0
    while idx <= block.number:
        s = 0
        s = 0
        while s < sub_193a5c49[idx]:
            mem[0] = sha3(idx, 5)
            sub_7794e287++
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = sub_193a5c49[idx][s]
            require ext_code.size(sub_b4d65d3eAddress)
            call sub_b4d65d3eAddress.isPregnant(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args sub_193a5c49[idx][s]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0]:
                mem[(32 * arg1.length) + 160] = 0
                mem[(32 * arg1.length) + 132] = sub_193a5c49[idx][s]
                require ext_code.size(sub_b4d65d3eAddress)
                call sub_b4d65d3eAddress.giveBirth(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args sub_193a5c49[idx][s]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
            s = sub_193a5c49[idx][s]
            s = s + 1
            continue 
        mem[32] = 5
        sub_193a5c49[idx] = 0
        mem[0] = sha3(idx, 5)
        s = sha3(sha3(idx, 5))
        while sha3(sha3(idx, 5)) + sub_193a5c49[idx] > s:
            stor[s] = 0
            s = s + 1
            continue 
        s = sha3(idx, 5)
        idx = idx + 1
        continue 
    sub_712b46b0 = block.number
}



}
