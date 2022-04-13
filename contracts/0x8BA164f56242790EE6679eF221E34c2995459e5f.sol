contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x2debb13bcf5526e0cf5e3a4e5049100e3f7c2ae5
    return code.data[110 len 4331]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 reviewCount;
uint8 stor3;
uint256 stor3; offset 2
uint256 secretCount;
uint256 sub_75b9c1a7;
uint256 sub_7c2dfe99;
uint256 sub_22c5581a;
array of uint256 stor7;
mapping of struct sub_aaa0d039;
mapping of uint8 stor9;
mapping of uint8 stor10;

function count() {
    return reviewCount
}

function sub_0fcc2ac8(?) {
    return bool(stor10[arg1])
}

function secretCount() {
    return secretCount
}

function sub_22c5581a(?) {
    return sub_22c5581a
}

function getReviewCount() {
    return reviewCount
}

function sub_75b9c1a7(?) {
    return sub_75b9c1a7
}

function sub_7c2dfe99(?) {
    return sub_7c2dfe99
}

function owner() {
    return owner
}

function sub_8e26ba03(?) {
    return bool(stor9[arg1])
}

function tokenAddress() {
    return tokenAddress
}

function sub_aaa0d039(?) {
    return sub_aaa0d039[arg1].field_0, 
           address(sub_aaa0d039[arg1].field_256),
           address(sub_aaa0d039[arg1].field_512),
           sub_aaa0d039[arg1].field_768,
           sub_aaa0d039[arg1].field_1024,
           bool(uint8(sub_aaa0d039[arg1].field_1280))
}

function _fallback() payable {
    require owner == msg.sender
}

function sub_2eef1e38(?) {
    require owner == msg.sender
    require arg1
    stor9[address(arg1)] = 1
}

function sub_d77d93c0(?) {
    require owner == msg.sender
    sub_75b9c1a7 = arg1
    sub_7c2dfe99 = arg2
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function sub_7a5c778d(?) {
    require arg1 < stor7.length
    return (stor7[0.25 / arg1].field_0 / 256^(8 * arg1 % 4) << 192)
}

function getContractBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_2a9c829a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            s = sha3(7) + (stor7.length + 4 / 4)
            while sha3(7) + (stor7.length + 3 / 4) > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 7
        require idx < arg1.length
        stor7[Mask(254, 0, stor7.length.field_2)].field_0 = mem[(32 * idx) + 128 len 8] * 256^(8 * stor7.length % 4) or !(test266151307() * 256^(8 * stor7.length % 4)) and stor7[Mask(254, 0, stor7.length.field_2)].field_0
        idx = idx + 1
        continue 
}

function sub_3e4e10d6(?) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_81eaef27(?) {
    if not stor7.length:
        mem[(32 * stor7.length) + 160] = 32
        mem[(32 * stor7.length) + 192] = stor7.length
        mem[(32 * stor7.length) + 224 len floor32(stor7.length)] = mem[160 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 160
           len (96 * stor7.length) + 64
    mem[160] = uint256(stor7.field_0) / 256^0 << 192
    idx = 160
    s = 0
    while (32 * stor7.length) + 128 > idx:
        mem[idx + 32] = uint256(stor7.field_0) / 256^((8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)) << 192
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[(32 * stor7.length) + 224 len floor32(stor7.length)] = mem[160 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[160 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 224 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function sub_830aea64(?) {
    mem[128 len arg1.length] = arg1[all]
    require stor9[address(msg.sender)]
    require arg1.length
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] = 1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_ca4f9697(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    require not stor9[address(msg.sender)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    require secretCount < stor7.length
    require stor7[Mask(254, 0, stor3.field_2)].field_0 / 256^(8 * stor3.field_0 % 4) << 192 == Mask(64, 192, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 160 len arg4.length % 32]))
    require arg3
    require stor9[address(arg1)]
    sub_aaa0d039[stor2].field_0 = block.timestamp
    address(sub_aaa0d039[stor2].field_256) = msg.sender
    address(sub_aaa0d039[stor2].field_512) = arg1
    sub_aaa0d039[stor2].field_768 = arg2
    sub_aaa0d039[stor2].field_1024 = arg3
    reviewCount++
    if secretCount >= 99:
        secretCount = 0
    else:
        secretCount++
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 192 len arg5.length % 32] = mem[ceil32(arg4.length) + floor32(arg5.length) + -(arg5.length % 32) + 192 len arg5.length % 32]
    if not stor10[call.data[arg5 + 36 len floor32(arg5.length)]][mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_75b9c1a7
    else:
        uint8(sub_aaa0d039[stor2].field_1280) = 1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + -(arg5.length % 32) + 192 len arg5.length % 32] = mem[ceil32(arg4.length) + floor32(arg5.length) + -(arg5.length % 32) + 192 len arg5.length % 32]
        stor10[call.data[arg5 + 36 len floor32(arg5.length)]][mem[ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 160 len arg5.length % 32]] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_7c2dfe99
    require ext_call.success
    return 1
}



}
