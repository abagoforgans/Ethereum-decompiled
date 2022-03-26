contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor5;
uint256 stor6;
uint8 stor7;

function _fallback() {
    stor0 = msg.sender
    stor7 = 0
    stor5 = 0
    stor1[0x99fc71fa477d1d3e6b6c3ed2631188e045b7f575eac394e50d0d9f182d3b0145] = 11012 * 10^16
    stor6++
    stor1[0x8b4f72e27b2a84a30fe20b0ee5647e3ca5156e1cb0d980c35c657aa859b03183] = 532535 * 10^14
    stor6++
    stor1[0xe7ac3e31f32c5e232eb08a8f978c7e4c4845c44eb9fa36e89b91fc15eedf8ffb] = 151 * 10^18
    stor6++
    stor1[0xc18494ff224d767c15c62993a1c28e5a1dc17d7c41abab515d4fcce2bd6f629d] = 6322342 * 10^13
    stor6++
    stor1[0x5cdb60c9e999a510d191cf427c9995d6ad3120a6b44afcb922149d275afc8ec4] = 101 * 10^18
    stor6++
    stor1[0x5fb7aed108f910cc73b3e10ceb8c73f90f8d6eff61cda5f43d47f7bec9070af4] = 163 * 10^17
    stor6++
    stor1[0x571a888f66f4d74442733441d62a92284f1c11de57198decf9d4c244fb558f29] = 424 * 10^18
    stor6++
    stor1[0x7123fa994a2990c5231d35cb11901167704ab19617fcbc04b93c45cf88b30e94] = 366 * 10^17
    stor6++
    stor1[0xdac0e1457b4cf3e53e9952b1f8f3a68a0f288a7e6192314d5b19579a5266cce0] = 4191 * 10^17
    stor6++
    stor1[0xf836a280ec6c519f6e95baec2caee1ba4e4d1347f81d4758421272b81c4a36cb] = 8644 * 10^16
    stor6++
    stor1[0x5470e8b8b149aca84ee799f6fd1a6bf885267a1f7c88c372560b28180e2cf056] = 92 * 10^18
    stor6++
    stor1[0x7f52b6f587c87240d471d6fcda1bb3c10c004771c1572443134fd6756c001c9a] = 345 * 10^14 * 24 * 3600
    stor6++
    stor1[0x5d435968b687edc305c3adc29523aba1128bd9acd2c40ae2c9835f2e268522e1] = 95102 * 10^15
    stor6++
    return code.data[1274 len 2474]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;
mapping of uint8 stor2;
mapping of address stor3;
mapping of uint256 stor4;
uint256 num_claimed;
uint256 total_claim_codes;
uint8 deposits_refunded;

function deposits_refunded() {
    return bool(deposits_refunded)
}

function total_claim_codes() {
    return total_claim_codes
}

function num_claimed() {
    return num_claimed
}

function end_redeem_period() {
    if block.number < 2900000:
        if num_claimed:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function check_redeemed(string arg1) {
    if stor1[arg1[all]]:
        return bool(stor2[arg1[all]])
    return 1
}

function register_claim(string arg1) payable {
    if msg.value == 50 * 10^18:
        if stor1[arg1[all]]:
            require not stor2[arg1[all]]
            require not deposits_refunded
            num_claimed++
            stor2[arg1[all]] = 1
            stor3[arg1[all]] = msg.sender
            stor1[arg1[all]] += 50 * 10^18
            stor4[stor5] = sha3(arg1[all])
}

function refund_deposits(string arg1) {
    require not deposits_refunded
    require stor1[arg1[all]]
    if num_claimed < total_claim_codes:
        require block.number >= 2850000
    s = 0
    s = 0
    idx = 1
    while idx <= num_claimed:
        call stor3[stor4[idx]] with:
           value 50 * 10^18 wei
             gas 0 wei
        require ext_call.success
        mem[0] = stor4[idx]
        mem[32] = 1
        stor1[stor4[idx]] -= 50 * 10^18
        s = stor3[stor4[idx]]
        s = stor4[idx]
        idx = idx + 1
        continue 
    deposits_refunded = 1
}

function refund_claims(string arg1) {
    require deposits_refunded
    require stor1[arg1[all]]
    s = 0
    s = 0
    s = 0
    idx = 1
    while idx <= num_claimed:
        mem[0] = stor4[idx]
        mem[32] = 1
        if eth.balance(this.address) >= stor1[stor4[idx]]:
            call stor3[stor4[idx]] with:
               value stor1[stor4[idx]] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            mem[0] = stor4[idx]
            mem[32] = 1
            stor1[stor4[idx]] = 0
        s = stor1[stor4[idx]]
        s = stor3[stor4[idx]]
        s = stor4[idx]
        idx = idx + 1
        continue 
}



}
