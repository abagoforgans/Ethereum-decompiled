contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint8 stor3; offset 160
address stor3;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    mem[96 len -7183] = code.data[7897 len -7183]
    mem[64] = -7087
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].register(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, mem[204 len 20], mem[128]
    require ext_call.success
    require ext_call.return_data[0]
    stor1 = mem[96]
    uint256(stor3.field_0) = msg.sender or Mask(96, 160, uint256(stor3.field_0))
    uint8(stor3.field_160) = 1
    stor4 = mem[128]
    stor5[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2 = 0
    stor6 = mem[192]
    stor7 = address(stor3.field_0)
    return code.data[714 len 7183]
}



// =====================  Runtime code  =====================


#
#  - sub_af75e5de(?)
#
mapping of struct sub_0d426b6e;
address stor1;
uint256 purchaseCount;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 sub_5ee9b8bb;
array of uint256 data;
address referralAddress;
address payoutAddress;
uint256 stor7;

function sub_0d426b6e(?) {
    return sub_0d426b6e[arg1].field_1024
}

function referral() {
    return referralAddress
}

function enabled() {
    return bool(uint8(stor3.field_160))
}

function purchaseCount() {
    return purchaseCount
}

function payoutAddress() {
    return address(payoutAddress)
}

function sub_5ee9b8bb(?) {
    return sub_5ee9b8bb
}

function data() {
    return data[0 len data.length]
}

function owner() {
    return owner
}

function sub_a26051aa(?) {
    return sub_0d426b6e[arg1][2][0 len sub_0d426b6e[arg1][2].length].field_0
}

function sub_ad348d8e(?) {
    return sub_0d426b6e[arg1][6][0 len sub_0d426b6e[arg1][6].length].field_0
}

function _fallback() payable {
    revert 
}

function setEnabled(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function sub_bb4013d3(?) {
    require bool(uint8(stor3.field_160)) == 1
    require msg.sender == owner
    data[] = Array(len=arg1.length, data=arg1[all])
    emit 0x16cf66ea 
}

function setPayoutAddress(address arg1) {
    require bool(uint8(stor3.field_160)) == 1
    require msg.sender == owner
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_cddd617c(?) {
    require bool(uint8(stor3.field_160)) == 1
    require msg.sender == owner
    sub_0d426b6e[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit 0xf8c741eb: arg1
}

function refund(uint256 arg1) payable {
    require bool(uint8(stor3.field_160)) == 1
    require msg.sender == owner
    if sub_0d426b6e[arg1].field_256 > 0:
        call sub_0d426b6e[arg1].field_768 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_0d426b6e[arg1].field_1280 = 1
        emit 0x1fe2436d: msg.sender, msg.value, arg1
}

function sub_6c7cdf50(?) payable {
    require bool(uint8(stor3.field_160)) == 1
    require sub_0d426b6e[arg1].field_256 > 0
    require ext_code.size(stor1)
    call stor1.0xadfcd81 with:
       value msg.value / 100 wei
         gas gas_remaining - 9050 wei
        args referralAddress, msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    call address(payoutAddress) with:
       value msg.value - (msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_0d426b6e[arg1].field_1024 += msg.value
    emit 0x59627692: msg.sender, msg.value, sub_0d426b6e[arg1].field_1024 + msg.value, Array(len=arg2.length, data=arg2[all]), arg1
}

function sub_e9b5b662(?) payable {
    require bool(uint8(stor3.field_160)) == 1
    purchaseCount++
    require ext_code.size(stor1)
    call stor1.0xadfcd81 with:
       value msg.value / 100 wei
         gas gas_remaining - 9050 wei
        args referralAddress, msg.sender, purchaseCount
    require ext_call.success
    require ext_call.return_data[0]
    call address(payoutAddress) with:
       value msg.value - (msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_0d426b6e[stor2].field_0 = arg1
    sub_0d426b6e[stor2].field_256 = block.timestamp
    sub_0d426b6e[stor2][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_0d426b6e[stor2].field_768 = msg.sender or Mask(96, 160, sub_0d426b6e[stor2].field_768)
    sub_0d426b6e[stor2].field_1024 = msg.value
    sub_0d426b6e[stor2].field_1280 = 0
    sub_0d426b6e[stor2].field_1536 = 0
    sub_0d426b6e[stor2].field_1536 = 0
    sub_0d426b6e[stor2].field_1537 = 0
    sub_0d426b6e[stor2].field_1544 = arg1 / 256
    idx = 0
    while sub_0d426b6e[stor2][6].length + 31 / 32 > idx:
        sub_0d426b6e[stor2][idx + 6].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x625e2957: msg.value, purchaseCount, msg.sender, arg1
    return purchaseCount
}

function getPurchase(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 0
    mem[160] = sub_0d426b6e[arg1][2].length
    mem[192] = sub_0d426b6e[arg1][2].field_0
    idx = 192
    s = 0
    while sub_0d426b6e[arg1][2].length + 160 > idx:
        mem[idx + 32] = sub_0d426b6e[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 224
    mem[ceil32(sub_0d426b6e[arg1][2].length) + 192] = sub_0d426b6e[arg1][6].length
    mem[0] = sha3(arg1, 0) + 6
    mem[ceil32(sub_0d426b6e[arg1][2].length) + 224] = sub_0d426b6e[arg1][6].field_0
    idx = ceil32(sub_0d426b6e[arg1][2].length) + 224
    s = 0
    while ceil32(sub_0d426b6e[arg1][2].length) + sub_0d426b6e[arg1][6].length + 192 > idx:
        mem[idx + 32] = sub_0d426b6e[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 224] = sub_0d426b6e[arg1].field_0
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 256] = sub_0d426b6e[arg1].field_256
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 320] = sub_0d426b6e[arg1].field_768
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 352] = bool(sub_0d426b6e[arg1].field_1280)
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 416] = sub_0d426b6e[arg1].field_1024
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 288] = 224
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 448] = sub_0d426b6e[arg1][2].length
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 480 len sub_0d426b6e[arg1][2].length] = mem[192 len sub_0d426b6e[arg1][2].length]
    mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 384] = sub_0d426b6e[arg1][2].length + 256
    mem[sub_0d426b6e[arg1][2].length + ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 480] = sub_0d426b6e[arg1][6].length
    mem[sub_0d426b6e[arg1][2].length + ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 512 len sub_0d426b6e[arg1][6].length] = mem[ceil32(sub_0d426b6e[arg1][2].length) + 224 len sub_0d426b6e[arg1][6].length]
    if not sub_0d426b6e[arg1][6].length % 32:
        return sub_0d426b6e[arg1].field_0, 
               sub_0d426b6e[arg1].field_256,
               Array(len=sub_0d426b6e[arg1][2].length, data=mem[192 len sub_0d426b6e[arg1][2].length], sub_0d426b6e[arg1][6].length, mem[ceil32(sub_0d426b6e[arg1][2].length) + 224 len sub_0d426b6e[arg1][6].length]),
               sub_0d426b6e[arg1].field_768,
               bool(sub_0d426b6e[arg1].field_1280),
               sub_0d426b6e[arg1][2].length + 256,
               sub_0d426b6e[arg1].field_1024
    mem[floor32(sub_0d426b6e[arg1][6].length) + sub_0d426b6e[arg1][2].length + ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + 512] = mem[floor32(sub_0d426b6e[arg1][6].length) + sub_0d426b6e[arg1][2].length + ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + -sub_0d426b6e[arg1][6].length % 32 + 544 len sub_0d426b6e[arg1][6].length % 32]
    return sub_0d426b6e[arg1].field_0, 
           sub_0d426b6e[arg1].field_256,
           Array(len=sub_0d426b6e[arg1][2].length, data=mem[192 len sub_0d426b6e[arg1][2].length], sub_0d426b6e[arg1][6].length, mem[ceil32(sub_0d426b6e[arg1][2].length) + ceil32(sub_0d426b6e[arg1][6].length) + sub_0d426b6e[arg1][2].length + 512 len floor32(sub_0d426b6e[arg1][6].length) + 32]),
           sub_0d426b6e[arg1].field_768,
           bool(sub_0d426b6e[arg1].field_1280),
           sub_0d426b6e[arg1][2].length + 256,
           sub_0d426b6e[arg1].field_1024
}



}
