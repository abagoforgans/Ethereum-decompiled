contract main {




// =====================  Runtime code  =====================


#
#  - postListed(address arg1, string arg2, string arg3, uint256 arg4, string arg5, string arg6, string arg7)
#  - getTokenListedByAddress(address arg1)
#
address whoOwner;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
mapping of uint256 stor8;
mapping of struct tXwithCode;
array of struct stor10;
mapping of struct stor11;
array of struct stor12;
uint256 stor13;
mapping of uint256 stor115055310787760513077090573953980055546045058544009783459016764536700020380246;

function getTXwithCode(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[960] = tXwithCode[arg1][4].field_0
    idx = 960
    s = 0
    while tXwithCode[arg1][4].length + 928 > idx:
        mem[idx + 32] = tXwithCode[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return tXwithCode[arg1].field_0, 
           tXwithCode[arg1].field_256,
           tXwithCode[arg1].field_512,
           tXwithCode[arg1].field_768,
           Array(len=tXwithCode[arg1][4].length, data=mem[960 len tXwithCode[arg1][4].length]),
           tXwithCode[arg1].field_1280,
           tXwithCode[arg1].field_1536,
           tXwithCode[arg1].field_1792,
           tXwithCode[arg1].field_2048,
           tXwithCode[arg1].field_2304,
           bool(tXwithCode[arg1].field_2816),
           bool(tXwithCode[arg1].field_2824)
}

function sub_5167f670(?) {
    require calldata.size - 4 >= 32
    idx = 960
    s = 0
    while tXwithCode[arg1][4].length + 928 > idx:
        mem[idx + 32] = tXwithCode[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return tXwithCode[arg1].field_2560
}

function whoOwner() {
    return whoOwner
}

function sub_e2490baa(?) {
    return bool(stor6)
}

function _fallback() payable {
    require calldata.size
}

function checkIsContract(address arg1) {
    require calldata.size - 4 >= 32
    return uint32(ext_code.size(arg1))
}

function sub_fe34c036(?) {
    require msg.sender == whoOwner
    if stor6:
        revert with 0, 'Maintenance has been on'
    stor6 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == whoOwner
    if arg1:
        whoOwner = arg1
}

function sub_f45fbe6a(?) {
    require msg.sender == whoOwner
    if bool(stor6) != 1:
        revert with 0, 'Maintenance has been off'
    stor6 = 0
}

function sub_d9b9f549(?) {
    require calldata.size - 4 >= 128
    require msg.sender == whoOwner
    if arg1:
        stor2 = arg1
        stor3 = arg2
        stor4 = arg3
        stor5 = arg4
}

function withdrawEth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == whoOwner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_51b7d2f3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == whoOwner
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    stor11[address(arg1)].field_1536 = 1
}

function withdrawForeignTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == whoOwner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTX() {
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = uint256(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    return Array(len=stor10.length, data=mem[128 len floor32(stor10.length)], mem[(32 * stor10.length) + floor32(stor10.length) + 192 len (32 * stor10.length) - floor32(stor10.length)]), 
}

function getTokenListed() {
    if not stor12.length:
        mem[(32 * stor12.length) + 128] = 32
        mem[(32 * stor12.length) + 160] = stor12.length
        mem[(32 * stor12.length) + 192 len floor32(stor12.length)] = mem[128 len floor32(stor12.length)]
        return memory
          from (32 * stor12.length) + 128
           len (96 * stor12.length) + 64
    mem[128] = address(stor12.field_0)
    idx = 128
    s = 0
    while (32 * stor12.length) + 96 > idx:
        mem[idx + 32] = stor12[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor12.length) + 192 len floor32(stor12.length)] = mem[128 len floor32(stor12.length)]
    return Array(len=stor12.length, data=mem[128 len floor32(stor12.length)], mem[(32 * stor12.length) + floor32(stor12.length) + 192 len (32 * stor12.length) - floor32(stor12.length)]), 
}

function cancelTXwithCode(bytes32 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor10.length:
        mem[0] = 10
        if stor10[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require not uint32(ext_code.size(msg.sender))
    require msg.sender == tXwithCode[arg1].field_256
    require not tXwithCode[arg1].field_2816
    require not tXwithCode[arg1].field_2824
    require not tXwithCode[arg1].field_512
    tXwithCode[arg1].field_512 = tXwithCode[arg1].field_256
    tXwithCode[arg1].field_2304 = 0
    tXwithCode[arg1].field_2816 = 1
    tXwithCode[arg1].field_2824 = 1
    tXwithCode[arg1].field_3072 = 0
    require storFE5E[msg.sender] >= tXwithCode[arg1].field_2048
    call tXwithCode[arg1].field_256 with:
       value tXwithCode[arg1].field_2048 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require tXwithCode[arg1].field_2048 <= storFE5E[msg.sender]
    storFE5E[msg.sender] -= tXwithCode[arg1].field_2048
}

function cancelOngoingTxByAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == whoOwner
    idx = 0
    s = 0
    while idx < stor10.length:
        mem[0] = 10
        if stor10[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require not uint32(ext_code.size(msg.sender))
    require 1 == bool(tXwithCode[arg1].field_2816)
    require not tXwithCode[arg1].field_2824
    tXwithCode[arg1].field_2824 = 1
    require tXwithCode[arg1].field_2304 <= stor8[stor9[arg1].field_768][stor9[arg1].field_512]
    require tXwithCode[arg1].field_2048 <= storFE5E[stor9[arg1].field_256]
    require tXwithCode[arg1].field_2304 <= stor8[stor9[arg1].field_768][stor9[arg1].field_512]
    stor8[stor9[arg1].field_768][stor9[arg1].field_512] -= tXwithCode[arg1].field_2304
    require tXwithCode[arg1].field_2048 <= storFE5E[stor9[arg1].field_256]
    storFE5E[stor9[arg1].field_256] -= tXwithCode[arg1].field_2048
    call tXwithCode[arg1].field_256 with:
       value tXwithCode[arg1].field_2048 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tXwithCode[arg1].field_768)
    call tXwithCode[arg1].field_768.0xa9059cbb with:
         gas gas_remaining wei
        args tXwithCode[arg1].field_512, tXwithCode[arg1].field_2304
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function payFee(bytes32 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor10.length:
        mem[0] = 10
        if stor10[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require 1 == bool(tXwithCode[arg1].field_2816)
    require not tXwithCode[arg1].field_2824
    tXwithCode[arg1].field_2824 = 1
    require tXwithCode[arg1].field_2304 <= stor8[stor9[arg1].field_768][stor9[arg1].field_512]
    require tXwithCode[arg1].field_2048 <= storFE5E[stor9[arg1].field_256]
    require tXwithCode[arg1].field_2304 <= stor8[stor9[arg1].field_768][stor9[arg1].field_512]
    stor8[stor9[arg1].field_768][stor9[arg1].field_512] -= tXwithCode[arg1].field_2304
    require tXwithCode[arg1].field_2048 <= storFE5E[stor9[arg1].field_256]
    storFE5E[stor9[arg1].field_256] -= tXwithCode[arg1].field_2048
    call tXwithCode[arg1].field_512 with:
       value tXwithCode[arg1].field_2048 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tXwithCode[arg1].field_768)
    call tXwithCode[arg1].field_768.0xa9059cbb with:
         gas gas_remaining wei
        args tXwithCode[arg1].field_256, tXwithCode[arg1].field_2304
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, whoOwner, tXwithCode[arg1].field_2560
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0]), bool(ext_call.return_data[0])
}

function TXwithCode(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not stor2:
        if not stor3:
            if not stor4:
                if not stor5:
                    require ext_code.size(tXwithCode[arg1].field_768)
                    call tXwithCode[arg1].field_768.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, tXwithCode[arg1].field_1536
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tXwithCode[arg1].field_2816 = 1
                    tXwithCode[arg1].field_2824 = 1
                    tXwithCode[arg1].field_3072 = 0
                    stor10.length++
                    stor10[stor10.length].field_0 = arg1
    idx = 0
    s = 0
    while idx < stor10.length:
        mem[0] = 10
        if stor10[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require not uint32(ext_code.size(msg.sender))
    require ext_code.size(tXwithCode[arg1].field_768)
    staticcall tXwithCode[arg1].field_768.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= tXwithCode[arg1].field_1536
    require not tXwithCode[arg1].field_2816
    require not tXwithCode[arg1].field_2824
    require not tXwithCode[arg1].field_512
    require tXwithCode[arg1].field_1536 + stor8[stor9[arg1].field_768][msg.sender] >= stor8[stor9[arg1].field_768][msg.sender]
    stor8[stor9[arg1].field_768][msg.sender] += tXwithCode[arg1].field_1536
    tXwithCode[arg1].field_2304 = tXwithCode[arg1].field_1536
    tXwithCode[arg1].field_512 = msg.sender or Mask(96, 160, tXwithCode[arg1].field_512)
    tXwithCode[arg1].field_2816 = 1
    require ext_code.size(tXwithCode[arg1].field_768)
    call tXwithCode[arg1].field_768.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, tXwithCode[arg1].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_0fe42824(?) {
    require calldata.size - 4 >= 224
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg5.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 192] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 192] = arg6.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224 len arg6.length] = arg6[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224] = 0
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = arg7.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256 len arg7.length] = arg7[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256] = 0
    require msg.sender == whoOwner
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    stor11[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor11[address(arg1)][1][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    stor11[address(arg1)].field_512 = arg4
    stor11[address(arg1)][3][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
    stor11[address(arg1)][4][].field_0 = Array(len=Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)], data=mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
    stor11[address(arg1)][5][].field_0 = Array(len=Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)], data=mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)]])
}

function postTX(address arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160] = msg.sender << 96
    mem[ceil32(arg2.length) + 180] = block.timestamp
    mem[ceil32(arg2.length) + 212] = stor13
    mem[ceil32(arg2.length) + 128] = 84
    mem[64] = ceil32(arg2.length) + 244
    mem[ceil32(arg2.length) + 244 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 244] = 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 244] or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[ceil32(arg2.length) + 244 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2:
        if not stor3:
            if not stor4:
                if not stor5:
                    call stor1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10.length++
                    stor10[stor10.length].field_0 = hash
    require not stor6
    if msg.value < stor7:
        require not stor6
        require msg.value >= stor7
    else:
        if uint32(ext_code.size(msg.sender)):
            require not stor6
            require msg.value >= stor7
        else:
            require msg.value + storFE5E[msg.sender] >= storFE5E[msg.sender]
            storFE5E[msg.sender] += msg.value
            require 10^arg3
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require arg4 > 0
            require arg5 > 0
            require msg.value == arg5 * arg4 / 10^arg3
            idx = 0
            while idx < stor10.length:
                mem[0] = 10
                require stor10[idx].field_0 != hash
                idx = idx + 1
                continue 
            tXwithCode[hash].field_0 = stor13 + 1
            tXwithCode[hash].field_256 = msg.sender
            tXwithCode[hash].field_768 = arg1
            tXwithCode[hash][4][].field_0 = Array(len=arg2.length, data=arg2[all])
            tXwithCode[hash].field_1280 = arg3
            tXwithCode[hash].field_1536 = arg4
            tXwithCode[hash].field_1792 = arg5
            tXwithCode[hash].field_2048 = msg.value
            tXwithCode[hash].field_2560 = stor5 * stor3 / 100 * msg.value / 10^18 * 10^stor4
            stor10.length++
            stor10[stor10.length].field_0 = hash
            stor13++
}



}
