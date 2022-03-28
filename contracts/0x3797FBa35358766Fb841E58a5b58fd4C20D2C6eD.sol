contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of uint256 stor15;

function _fallback() {
    stor0 = msg.sender
    stor2 = this.address
    stor4 = 50
    stor5 = 2000
    stor6 = 1487481815
    stor7 = 1587481817
    stor8 = 1487481815
    stor9 = 1588481815
    stor10 = 20
    stor11 = 80
    stor12 = 10
    stor13 = 500
    mem[128] = '61e642ed97736187ee3badacf8a93f6c'
    mem[160] = '9976e9475e12f4e1ee1d33c9133d6085'
    stor3.length = 129
    s = 0
    idx = 128
    while 192 > idx:
        stor3[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor3.length + 31 / 32 > idx:
        stor3[idx] = 0
        idx = idx + 1
        continue 
    stor15['A Company'] = 1
    stor15['A1 Company'] = 1
    stor15['B Company'] = 2
    stor15['B1 Company'] = 2
    return code.data[825 len 4897]
}



// =====================  Runtime code  =====================


#
#  - sub_02351be3(?)
#
address owner;
address sub_8cabe7d0Address;
address signerAddress;
array of uint256 sub_c8a663ec;
uint256 minPrice;
uint256 maxPrice;
uint256 sub_c39587da;
uint256 sub_64b2a7ac;
uint256 sub_5afffc5a;
uint256 sub_6cc64ba2;
uint256 sub_74effedd;
uint256 sub_89ef2a65;
uint256 sub_2983f8fe;
uint256 sub_d6b68e80;
mapping of struct record;
mapping of uint256 stor99;

function signer() {
    return signerAddress
}

function sub_2983f8fe(?) {
    return sub_2983f8fe
}

function record(address arg1) {
    mem[384] = record[arg1][1].field_0
    idx = 384
    s = 0
    while record[arg1][1].length + 384 > idx + 32:
        mem[idx + 32] = record[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(record[arg1].field_0), 
           Array(len=record[arg1][1].length, data=mem[384 len record[arg1][1].length + (floor32(record[arg1][1].length - 1) + -record[arg1][1].length + 32 % 32)]),
           record[arg1].field_512,
           record[arg1].field_768,
           record[arg1].field_1024,
           record[arg1].field_1280,
           record[arg1].field_1536,
           record[arg1].field_1792
}

function sub_5afffc5a(?) {
    return sub_5afffc5a
}

function sub_64b2a7ac(?) {
    return sub_64b2a7ac
}

function sub_6cc64ba2(?) {
    return sub_6cc64ba2
}

function sub_74effedd(?) {
    return sub_74effedd
}

function sub_89ef2a65(?) {
    return sub_89ef2a65
}

function sub_8cabe7d0(?) {
    return sub_8cabe7d0Address
}

function owner() {
    return owner
}

function sub_c39587da(?) {
    return sub_c39587da
}

function sub_c8a663ec(?) {
    return sub_c8a663ec[0 len sub_c8a663ec.length]
}

function sub_d6b68e80(?) {
    return sub_d6b68e80
}

function maxPrice() {
    return maxPrice
}

function minPrice() {
    return minPrice
}

function destroy() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_579b119a(?) payable {
    require msg.sender == owner
    if arg2 != 1:
        call owner with:
           value record[address(arg1)].field_1536 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value record[address(arg1)].field_1536 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    record[address(arg1)].field_1536 = 0
}

function sub_a7203352(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 15
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
}



}
