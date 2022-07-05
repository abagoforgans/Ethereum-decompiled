contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const totalBalance = eth.balance(this.address)


address adminAddress;
uint256 sub_a631a93b;
array of struct stor2;
array of struct sub_b719a56c;
array of struct sub_ba35833c;
array of uint256 sub_53a6d43c;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor9;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor13;
array of uint256 tokenByIndex;
mapping of uint256 stor15;
mapping of uint256 sub_8acd3758;
mapping of uint256 sub_f846976d;
mapping of uint256 sub_92c27e77;
uint8 frozen;

function frozen() {
    return bool(frozen)
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function sub_53a6d43c(?) {
    require stor2[arg1].field_1792 <= 3
    require stor2[arg1].field_1792
    return sub_53a6d43c[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_89a32cea(?) {
    return sub_53a6d43c[arg1][arg2][0 len sub_53a6d43c[arg1][arg2].length]
}

function sub_8acd3758(?) {
    return sub_8acd3758[arg1]
}

function sub_92c27e77(?) {
    return sub_92c27e77[arg1][arg2]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a631a93b(?) {
    return sub_a631a93b
}

function sub_b719a56c(?) {
    return sub_b719a56c[arg1][1][0 len sub_b719a56c[arg1][1].length].field_0
}

function sub_ba35833c(?) {
    require arg2 < sub_ba35833c[arg1].field_0
    return sub_ba35833c[arg1][arg2].field_0
}

function tokenURI(uint256 arg1) {
    return sub_b719a56c[stor17[arg1]][0 len sub_b719a56c[stor17[arg1]].length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor9[address(arg1)][address(arg2)])
}

function sub_f846976d(?) {
    return sub_f846976d[arg1][arg2]
}

function admin() {
    return adminAddress
}

function destroy() {
    require msg.sender == adminAddress
    require frozen
    selfdestruct(adminAddress)
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function melt() {
    require msg.sender == adminAddress
    require frozen
    frozen = 0
}

function freeze() {
    require msg.sender == adminAddress
    require not frozen
    frozen = 1
}

function sub_6c8993df(?) {
    require stor2[arg1].field_1792 <= 3
    if stor2[arg1].field_1792 != 1:
        return 0
    return 1
}

function sub_d672a89e(?) {
    require stor2[arg1].field_1792 <= 3
    if stor2[arg1].field_1792 != 2:
        return 0
    return 1
}

function sub_fd36bf13(?) {
    require stor2[arg1].field_1792 <= 3
    if stor2[arg1].field_1792 != 3:
        return 0
    return 1
}

function isApproved(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    if approved[arg2] == arg1:
        return True
    return bool(stor9[stor6[arg2]][address(arg1)])
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor9[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_319691f6(?) {
    require msg.sender == adminAddress
    require stor2[arg1].field_1792 <= 3
    require stor2[arg1].field_1792 == 2
    stor2[arg1].field_1792 = 3
    emit 0xe7a3b3d9: arg1
}

function sub_8219e3ce(?) {
    require msg.sender == adminAddress
    require stor2[arg1].field_1792 <= 3
    require stor2[arg1].field_1792 == 1
    require sub_ba35833c[arg1].field_0 > 0
    stor2[arg1].field_1792 = 2
    stor2[arg1].field_1024 = block.timestamp
    emit 0xaf005998: arg1
}

function approve(address arg1, uint256 arg2) {
    require stor2[stor17[arg2]].field_1792 <= 3
    if stor2[stor17[arg2]].field_1792 == 1:
        require msg.sender == adminAddress
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor9[stor6[arg2]][address(msg.sender)]
    if approved[arg2]:
        approved[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approved[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function sub_8f8e2a4e(?) {
    require msg.sender == adminAddress
    require sub_a631a93b + 1 >= sub_a631a93b
    sub_a631a93b++
    stor2[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[stor1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[stor1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor2[stor1].field_768 = block.timestamp
    stor2[stor1].field_1024 = block.timestamp
    stor2[stor1].field_1280 = 0
    stor2[stor1].field_1536 = 0
    stor2[stor1].field_1792 = 1
    emit 0x3bb80c22: sub_a631a93b
    return sub_a631a93b
}

function sub_1310332a(?) {
    if not stor2[arg1].field_1536:
        if sub_f846976d[arg1][address(arg2)] <= 0:
            return -sub_f846976d[arg1][address(arg2)]
    else:
        if stor2[arg1].field_1536:
            if stor2[arg1].field_1536 * sub_92c27e77[arg1][address(arg2)] / stor2[arg1].field_1536 == sub_92c27e77[arg1][address(arg2)]:
                if sub_f846976d[arg1][address(arg2)] <= stor2[arg1].field_1536 * sub_92c27e77[arg1][address(arg2)]:
                    return ((stor2[arg1].field_1536 * sub_92c27e77[arg1][address(arg2)]) - sub_f846976d[arg1][address(arg2)])
    revert
}

function sub_e4fa9358(?) {
    require msg.sender == adminAddress
    require stor2[cd[4]].field_1792 <= 3
    require stor2[cd[4]].field_1792
    sub_b719a56c[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_b719a56c[cd[4]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_b719a56c[cd[4]].length + 31 / 32 > idx:
        sub_b719a56c[cd[4]][idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x35fddcdb: cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
}

function sub_1ba8cdc6(?) {
    require msg.sender == adminAddress
    require stor2[cd[4]].field_1792 <= 3
    require stor2[cd[4]].field_1792
    sub_b719a56c[cd[4]].field_256 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_b719a56c[cd[4]][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_b719a56c[cd[4]][1].length + 31 / 32 > idx:
        sub_b719a56c[cd[4]][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xc7559020: cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
}

function sub_00269470(?) {
    if not sub_ba35833c[arg1].field_0:
        mem[(32 * sub_ba35833c[arg1].field_0) + 128] = 32
        mem[(32 * sub_ba35833c[arg1].field_0) + 160] = sub_ba35833c[arg1].field_0
        mem[(32 * sub_ba35833c[arg1].field_0) + 192 len floor32(sub_ba35833c[arg1].field_0)] = mem[128 len floor32(sub_ba35833c[arg1].field_0)]
        return memory
          from (32 * sub_ba35833c[arg1].field_0) + 128
           len (96 * sub_ba35833c[arg1].field_0) + 64
    mem[128] = sub_ba35833c[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_ba35833c[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_ba35833c[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_ba35833c[arg1].field_0) + 192 len floor32(sub_ba35833c[arg1].field_0)] = mem[128 len floor32(sub_ba35833c[arg1].field_0)]
    return Array(len=sub_ba35833c[arg1].field_0, data=mem[128 len floor32(sub_ba35833c[arg1].field_0)], mem[(32 * sub_ba35833c[arg1].field_0) + floor32(sub_ba35833c[arg1].field_0) + 192 len (32 * sub_ba35833c[arg1].field_0) - floor32(sub_ba35833c[arg1].field_0)]), 
}

function sub_e63f90d1(?) {
    if not stor2[arg1].field_1536:
        require sub_f846976d[arg1][address(msg.sender)] <= 0
        require 0 >= sub_f846976d[arg1][address(msg.sender)]
        sub_f846976d[arg1][address(msg.sender)] = 0
        call msg.sender with:
           value -sub_f846976d[arg1][address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb502048a: msg.sender, arg1, -sub_f846976d[arg1][address(msg.sender)]
    else:
        require stor2[arg1].field_1536
        require stor2[arg1].field_1536 * sub_92c27e77[arg1][address(msg.sender)] / stor2[arg1].field_1536 == sub_92c27e77[arg1][address(msg.sender)]
        require sub_f846976d[arg1][address(msg.sender)] <= stor2[arg1].field_1536 * sub_92c27e77[arg1][address(msg.sender)]
        require stor2[arg1].field_1536 * sub_92c27e77[arg1][address(msg.sender)] >= sub_f846976d[arg1][address(msg.sender)]
        sub_f846976d[arg1][address(msg.sender)] = stor2[arg1].field_1536 * sub_92c27e77[arg1][address(msg.sender)]
        call msg.sender with:
           value (stor2[arg1].field_1536 * sub_92c27e77[arg1][address(msg.sender)]) - sub_f846976d[arg1][address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb502048a: msg.sender, arg1, (stor2[arg1].field_1536 * sub_92c27e77[arg1][address(msg.sender)]) - sub_f846976d[arg1][address(msg.sender)]
}

function sub_ec767049(?) {
    require arg1
    if not balanceOf[address(arg1)]:
        s = var24001
        idx = var24002
        s = var24003
        while idx != tokenByIndex.length:
            require idx + 1 >= idx
            mem[0] = idx + 1
            mem[32] = 6
            require ownerOf[idx + 1]
            if ownerOf[idx + 1] != arg1:
                s = idx + 1
                idx = idx + 1
                s = s
                continue 
            require s < balanceOf[address(arg1)]
            mem[(32 * s) + 128] = idx + 1
            require s + 1 >= s
            s = idx + 1
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[19031 len 32 * balanceOf[address(arg1)]]
        s = var25001
        idx = var25002
        s = var25003
        while idx != tokenByIndex.length:
            require idx + 1 >= idx
            mem[0] = idx + 1
            mem[32] = 6
            require ownerOf[idx + 1]
            if ownerOf[idx + 1] != arg1:
                s = idx + 1
                idx = idx + 1
                s = s
                continue 
            require s < balanceOf[address(arg1)]
            mem[(32 * s) + 128] = idx + 1
            require s + 1 >= s
            s = idx + 1
            idx = idx + 1
            s = s + 1
            continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function payment(uint256 arg1, string arg2) payable {
    require msg.sender == adminAddress
    require stor2[arg1].field_1792 <= 3
    require stor2[arg1].field_1792 == 2
    require sub_ba35833c[arg1].field_0
    require msg.value % sub_ba35833c[arg1].field_0 <= msg.value
    require sub_ba35833c[arg1].field_0
    if msg.value % sub_ba35833c[arg1].field_0 > 0:
        call msg.sender with:
           value msg.value % sub_ba35833c[arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require stor2[arg1].field_1280 + msg.value - (msg.value % sub_ba35833c[arg1].field_0) >= stor2[arg1].field_1280
    stor2[arg1].field_1280 = stor2[arg1].field_1280 + msg.value - (msg.value % sub_ba35833c[arg1].field_0)
    require stor2[arg1].field_1536 + (msg.value - (msg.value % sub_ba35833c[arg1].field_0) / sub_ba35833c[arg1].field_0) >= stor2[arg1].field_1536
    stor2[arg1].field_1536 += msg.value - (msg.value % sub_ba35833c[arg1].field_0) / sub_ba35833c[arg1].field_0
    sub_53a6d43c[arg1]++
    sub_53a6d43c[arg1][sub_53a6d43c[arg1]] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        sub_53a6d43c[arg1][sub_53a6d43c[arg1] + s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while sub_53a6d43c[arg1][sub_53a6d43c[arg1]].length + 31 / 32 > idx:
        sub_53a6d43c[arg1][sub_53a6d43c[arg1] + idx] = 0
        idx = idx + 1
        continue 
    emit 0xaaa8393a: address(msg.sender), arg1, msg.value - (msg.value % sub_ba35833c[arg1].field_0), msg.value - (msg.value % sub_ba35833c[arg1].field_0) / sub_ba35833c[arg1].field_0, Array(len=arg2.length, data=arg2[all])
}

function sub_097c9d88(?) {
    require msg.sender == adminAddress
    require stor2[arg1].field_1792 <= 3
    require stor2[arg1].field_1792 == 1
    if arg2:
        mem[128 len 32 * arg2] = code.data[19031 len 32 * arg2]
    s = 0
    idx = 0
    s = 0
    while idx != arg2:
        require tokenByIndex.length + 1 >= tokenByIndex.length
        sub_8acd3758[stor14.length + 1] = arg1
        sub_ba35833c[arg1].field_0++
        sub_ba35833c[arg1][sub_ba35833c[arg1].field_0].field_0 = tokenByIndex.length + 1
        require msg.sender
        require not ownerOf[stor14.length + 1]
        ownerOf[stor14.length + 1] = msg.sender
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length + 1
        stor13[stor14.length + 1] = tokenOfOwnerByIndex[address(msg.sender)]
        mem[(32 * arg2) + 128] = tokenByIndex.length + 1
        emit Transfer((tokenByIndex.length + 1), 0, msg.sender);
        stor15[stor14.length + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + 1
        require sub_92c27e77[arg1][address(msg.sender)] + 1 >= sub_92c27e77[arg1][address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = sha3(arg1, 19)
        sub_92c27e77[arg1][address(msg.sender)]++
        require s < arg2
        mem[(32 * s) + 128] = tokenByIndex.length + 1
        require s + 1 >= s
        s = tokenByIndex.length + 1
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * arg2) + 224 len floor32(arg2)] = mem[128 len floor32(arg2)]
    emit 0x1b39ecd3: arg1, Array(len=arg2, data=mem[128 len floor32(arg2)], mem[(32 * arg2) + floor32(arg2) + 224 len (32 * arg2) - floor32(arg2)])
}

function sub_b303322b(?) {
    mem[32] = 3
    mem[96] = sub_b719a56c[arg1].length
    mem[128] = sub_b719a56c[arg1].field_0
    idx = 128
    s = 0
    while sub_b719a56c[arg1].length + 96 > idx:
        mem[idx + 32] = sub_b719a56c[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 160
    mem[ceil32(sub_b719a56c[arg1].length) + 128] = sub_b719a56c[arg1][1].length
    mem[0] = sha3(arg1, 3) + 1
    mem[ceil32(sub_b719a56c[arg1].length) + 160] = sub_b719a56c[arg1][1].field_0
    idx = ceil32(sub_b719a56c[arg1].length) + 160
    s = 0
    while ceil32(sub_b719a56c[arg1].length) + sub_b719a56c[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_b719a56c[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 160] = 64
    mem[ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 224] = sub_b719a56c[arg1].length
    mem[ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 256 len ceil32(sub_b719a56c[arg1].length)] = mem[128 len ceil32(sub_b719a56c[arg1].length)]
    mem[ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 192] = sub_b719a56c[arg1].length + 96
    mem[sub_b719a56c[arg1].length + ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 256] = sub_b719a56c[arg1][1].length
    mem[sub_b719a56c[arg1].length + ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 288 len ceil32(sub_b719a56c[arg1][1].length)] = mem[ceil32(sub_b719a56c[arg1].length) + 160 len ceil32(sub_b719a56c[arg1][1].length)]
    if not sub_b719a56c[arg1][1].length % 32:
        return Array(len=sub_b719a56c[arg1].length, data=mem[128 len ceil32(sub_b719a56c[arg1].length)], mem[(2 * ceil32(sub_b719a56c[arg1].length)) + ceil32(sub_b719a56c[arg1][1].length) + 256 len sub_b719a56c[arg1][1].length + sub_b719a56c[arg1].length + -ceil32(sub_b719a56c[arg1].length) + 32]), 
               sub_b719a56c[arg1].length + 96
    mem[floor32(sub_b719a56c[arg1][1].length) + sub_b719a56c[arg1].length + ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + 288] = mem[floor32(sub_b719a56c[arg1][1].length) + sub_b719a56c[arg1].length + ceil32(sub_b719a56c[arg1].length) + ceil32(sub_b719a56c[arg1][1].length) + -sub_b719a56c[arg1][1].length % 32 + 320 len sub_b719a56c[arg1][1].length % 32]
    return Array(len=sub_b719a56c[arg1].length, data=mem[128 len ceil32(sub_b719a56c[arg1].length)], mem[(2 * ceil32(sub_b719a56c[arg1].length)) + ceil32(sub_b719a56c[arg1][1].length) + 256 len floor32(sub_b719a56c[arg1][1].length) + sub_b719a56c[arg1].length + -ceil32(sub_b719a56c[arg1].length) + 64]), 
           sub_b719a56c[arg1].length + 96
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not frozen
    require stor2[stor17[arg3]].field_1792 <= 3
    if stor2[stor17[arg3]].field_1792 == 1:
        require arg1 == adminAddress
    require stor2[stor17[arg3]].field_1792 <= 3
    require stor2[stor17[arg3]].field_1792 != 3
    if not stor2[stor17[arg3]].field_1536:
        require sub_f846976d[stor17[arg3]][address(arg1)] <= 0
        require 0 >= sub_f846976d[stor17[arg3]][address(arg1)]
        sub_f846976d[stor17[arg3]][address(arg1)] = 0
        call arg1 with:
           value -sub_f846976d[stor17[arg3]][address(arg1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb502048a: address(arg1), sub_8acd3758[arg3], -sub_f846976d[stor17[arg3]][address(arg1)]
    else:
        require stor2[stor17[arg3]].field_1536
        require stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)] / stor2[stor17[arg3]].field_1536 == sub_92c27e77[stor17[arg3]][address(arg1)]
        require sub_f846976d[stor17[arg3]][address(arg1)] <= stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]
        require stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)] >= sub_f846976d[stor17[arg3]][address(arg1)]
        sub_f846976d[stor17[arg3]][address(arg1)] = stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]
        call arg1 with:
           value (stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]) - sub_f846976d[stor17[arg3]][address(arg1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb502048a: address(arg1), sub_8acd3758[arg3], (stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]) - sub_f846976d[stor17[arg3]][address(arg1)]
    require sub_92c27e77[stor17[arg3]][address(arg2)] + 1 >= sub_92c27e77[stor17[arg3]][address(arg2)]
    sub_92c27e77[stor17[arg3]][address(arg2)]++
    require 1 <= sub_92c27e77[stor17[arg3]][address(arg1)]
    sub_92c27e77[stor17[arg3]][address(arg1)]--
    require sub_f846976d[stor17[arg3]][address(arg2)] + stor2[stor17[arg3]].field_1536 >= sub_f846976d[stor17[arg3]][address(arg2)]
    sub_f846976d[stor17[arg3]][address(arg2)] += stor2[stor17[arg3]].field_1536
    require stor2[stor17[arg3]].field_1536 <= sub_f846976d[stor17[arg3]][address(arg1)]
    sub_f846976d[stor17[arg3]][address(arg1)] -= stor2[stor17[arg3]].field_1536
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor13[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor13[arg3] = 0
    stor13[stor12[address(arg1)][stor12[address(arg1)]]] = stor13[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require not frozen
    require stor2[stor17[arg3]].field_1792 <= 3
    if stor2[stor17[arg3]].field_1792 == 1:
        require arg1 == adminAddress
    require stor2[stor17[arg3]].field_1792 <= 3
    require stor2[stor17[arg3]].field_1792 != 3
    if not stor2[stor17[arg3]].field_1536:
        require sub_f846976d[stor17[arg3]][address(arg1)] <= 0
        require 0 >= sub_f846976d[stor17[arg3]][address(arg1)]
        sub_f846976d[stor17[arg3]][address(arg1)] = 0
        call arg1 with:
           value -sub_f846976d[stor17[arg3]][address(arg1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb502048a: address(arg1), sub_8acd3758[arg3], -sub_f846976d[stor17[arg3]][address(arg1)]
    else:
        require stor2[stor17[arg3]].field_1536
        require stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)] / stor2[stor17[arg3]].field_1536 == sub_92c27e77[stor17[arg3]][address(arg1)]
        require sub_f846976d[stor17[arg3]][address(arg1)] <= stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]
        require stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)] >= sub_f846976d[stor17[arg3]][address(arg1)]
        sub_f846976d[stor17[arg3]][address(arg1)] = stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]
        call arg1 with:
           value (stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]) - sub_f846976d[stor17[arg3]][address(arg1)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xb502048a: address(arg1), sub_8acd3758[arg3], (stor2[stor17[arg3]].field_1536 * sub_92c27e77[stor17[arg3]][address(arg1)]) - sub_f846976d[stor17[arg3]][address(arg1)]
    require sub_92c27e77[stor17[arg3]][address(arg2)] + 1 >= sub_92c27e77[stor17[arg3]][address(arg2)]
    sub_92c27e77[stor17[arg3]][address(arg2)]++
    require 1 <= sub_92c27e77[stor17[arg3]][address(arg1)]
    sub_92c27e77[stor17[arg3]][address(arg1)]--
    require sub_f846976d[stor17[arg3]][address(arg2)] + stor2[stor17[arg3]].field_1536 >= sub_f846976d[stor17[arg3]][address(arg2)]
    sub_f846976d[stor17[arg3]][address(arg2)] += stor2[stor17[arg3]].field_1536
    require stor2[stor17[arg3]].field_1536 <= sub_f846976d[stor17[arg3]][address(arg1)]
    sub_f846976d[stor17[arg3]][address(arg1)] -= stor2[stor17[arg3]].field_1536
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor9[stor6[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    require stor13[arg3] < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][stor13[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor13[arg3] = 0
    stor13[stor12[address(arg1)][stor12[address(arg1)]]] = stor13[arg3]
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    stor13[arg3] = tokenOfOwnerByIndex[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function farms(uint256 arg1) {
    mem[32] = 2
    mem[96] = stor2[arg1].length
    mem[128] = stor2[arg1].field_0
    idx = 128
    s = 0
    while stor2[arg1].length + 96 > idx:
        mem[idx + 32] = stor2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1].length) + 128] = stor2[arg1][1].length
    mem[ceil32(stor2[arg1].length) + 160] = stor2[arg1][1].field_0
    idx = ceil32(stor2[arg1].length) + 160
    s = 0
    while ceil32(stor2[arg1].length) + stor2[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor2[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 192
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + 160] = stor2[arg1][2].length
    mem[0] = sha3(arg1, 2) + 2
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + 192] = stor2[arg1][2].field_0
    idx = ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + 192
    s = 0
    while ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + stor2[arg1][2].length + 160 > idx:
        mem[idx + 32] = stor2[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 288] = stor2[arg1].field_768
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 320] = stor2[arg1].field_1024
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 352] = stor2[arg1].field_1280
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 384] = stor2[arg1].field_1536
    require stor2[arg1].field_1792 <= 3
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 416] = stor2[arg1].field_1792
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 192] = 256
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 448] = stor2[arg1].length
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 480 len ceil32(stor2[arg1].length)] = mem[128 len ceil32(stor2[arg1].length)]
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 224] = stor2[arg1].length + 288
    mem[stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 480] = stor2[arg1][1].length
    mem[stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 512 len ceil32(stor2[arg1][1].length)] = mem[ceil32(stor2[arg1].length) + 160 len ceil32(stor2[arg1][1].length)]
    if not stor2[arg1][1].length % 32:
        mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 256] = stor2[arg1][1].length + stor2[arg1].length + 320
        mem[stor2[arg1][1].length + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 512] = stor2[arg1][2].length
        mem[stor2[arg1][1].length + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 544 len ceil32(stor2[arg1][2].length)] = mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + 192 len ceil32(stor2[arg1][2].length)]
        if not stor2[arg1][2].length % 32:
            return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 480 len stor2[arg1][2].length + stor2[arg1][1].length + stor2[arg1].length + -ceil32(stor2[arg1].length) + 64]), 
                   stor2[arg1].length + 288,
                   stor2[arg1][1].length + stor2[arg1].length + 320,
                   stor2[arg1].field_768,
                   stor2[arg1].field_1024,
                   stor2[arg1].field_1280,
                   stor2[arg1].field_1536,
                   stor2[arg1].field_1792
        mem[floor32(stor2[arg1][2].length) + stor2[arg1][1].length + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 544] = mem[floor32(stor2[arg1][2].length) + stor2[arg1][1].length + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + -stor2[arg1][2].length % 32 + 576 len stor2[arg1][2].length % 32]
        return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 480 len floor32(stor2[arg1][2].length) + stor2[arg1][1].length + stor2[arg1].length + -ceil32(stor2[arg1].length) + 96]), 
               stor2[arg1].length + 288,
               stor2[arg1][1].length + stor2[arg1].length + 320,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792
    mem[floor32(stor2[arg1][1].length) + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 512] = mem[floor32(stor2[arg1][1].length) + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + -stor2[arg1][1].length % 32 + 544 len stor2[arg1][1].length % 32]
    mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 256] = floor32(stor2[arg1][1].length) + stor2[arg1].length + 352
    mem[floor32(stor2[arg1][1].length) + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 544] = stor2[arg1][2].length
    mem[floor32(stor2[arg1][1].length) + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 576 len ceil32(stor2[arg1][2].length)] = mem[ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + 192 len ceil32(stor2[arg1][2].length)]
    if not stor2[arg1][2].length % 32:
        return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 480 len stor2[arg1][2].length + floor32(stor2[arg1][1].length) + stor2[arg1].length + -ceil32(stor2[arg1].length) + 96]), 
               stor2[arg1].length + 288,
               floor32(stor2[arg1][1].length) + stor2[arg1].length + 352,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792
    mem[floor32(stor2[arg1][2].length) + floor32(stor2[arg1][1].length) + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 576] = mem[floor32(stor2[arg1][2].length) + floor32(stor2[arg1][1].length) + stor2[arg1].length + ceil32(stor2[arg1].length) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + -stor2[arg1][2].length % 32 + 608 len stor2[arg1][2].length % 32]
    return Array(len=stor2[arg1].length, data=mem[128 len ceil32(stor2[arg1].length)], mem[(2 * ceil32(stor2[arg1].length)) + ceil32(stor2[arg1][1].length) + ceil32(stor2[arg1][2].length) + 480 len floor32(stor2[arg1][2].length) + floor32(stor2[arg1][1].length) + stor2[arg1].length + -ceil32(stor2[arg1].length) + 128]), 
           stor2[arg1].length + 288,
           floor32(stor2[arg1][1].length) + stor2[arg1].length + 352,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1280,
           stor2[arg1].field_1536,
           stor2[arg1].field_1792
}



}
