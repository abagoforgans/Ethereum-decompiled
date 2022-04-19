contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor9;
uint256 stor11;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'HODL Trust' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'HODL' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    require not msg.value
    stor0 = msg.sender
    stor9 = 200
    stor11 = 5
    return code.data[454 len 11828]
}



// =====================  Runtime code  =====================


#
#  - sub_d9dd5d2f(?)
#
const getBalance = eth.balance(this.address)

const timestamp = block.timestamp


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 totalDividends;
uint256 sub_93025d54;
uint8 stor10;
uint256 sub_117e6def;
mapping of struct account;
array of struct sub_c69da161;
array of struct sub_bb073e80;
array of struct sub_cc5c8d71;
array of struct addressList;

function name() {
    return name[0 len name.length]
}

function sub_117e6def(?) {
    return sub_117e6def
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_582c4e2b(?) {
    require arg1 < sub_cc5c8d71.length
    return sub_cc5c8d71[arg1].field_0, 
           sub_cc5c8d71[arg1].field_256,
           sub_cc5c8d71[arg1].field_512,
           sub_cc5c8d71[arg1].field_768,
           bool(sub_cc5c8d71[arg1].field_1024),
           bool(sub_cc5c8d71[arg1].field_1032)
}

function accounts(address arg1) {
    return account[arg1].field_0, 
           account[arg1].field_256,
           account[arg1].field_512,
           account[arg1].field_768,
           account[arg1].field_1024
}

function sub_6a0618a8(?) {
    return sub_cc5c8d71.length
}

function sub_70337150(?) {
    return bool(stor10)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_93025d54(?) {
    return sub_93025d54
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalDividends() {
    return totalDividends
}

function addressList(uint256 arg1) {
    require arg1 < addressList.length
    return addressList[arg1].field_0
}

function sub_bb073e80(?) {
    require arg2 < sub_bb073e80[arg1].field_0
    return sub_bb073e80[arg1][arg2].field_0
}

function sub_c69da161(?) {
    require arg2 < sub_c69da161[arg1].field_0
    return sub_c69da161[arg1][arg2].field_0
}

function sub_cc5c8d71(?) {
    require arg1 < sub_cc5c8d71.length
    return sub_cc5c8d71[arg1].field_0, 
           sub_cc5c8d71[arg1].field_256,
           sub_cc5c8d71[arg1].field_512,
           sub_cc5c8d71[arg1].field_768,
           bool(sub_cc5c8d71[arg1].field_1024),
           bool(sub_cc5c8d71[arg1].field_1032)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getAccount(address arg1) {
    return account[address(arg1)].field_0, 
           account[address(arg1)].field_256,
           account[address(arg1)].field_512,
           account[address(arg1)].field_768,
           account[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function sub_9ebfa3f7(?) {
    require msg.sender == owner
    stor10 = 1
}

function sub_69911143(?) {
    account[address(arg1)].field_1024 = block.timestamp
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_e4f6a318(?) {
    if block.timestamp <= account[address(arg1)].field_1024 + (31540000 * sub_117e6def):
        return 0
    if account[address(arg1)].field_512 <= 0:
        return 0
    return 1
}

function sub_53b48b7b(?) {
    require arg1 < sub_cc5c8d71.length
    if block.timestamp <= sub_cc5c8d71[arg1].field_768:
        return (sub_cc5c8d71[arg1].field_768 - block.timestamp)
    else:
        return 0
}

function cashOut() {
    account[address(msg.sender)].field_512 = 0
    call msg.sender with:
       value account[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_2552fb2d(?) {
    require arg1 < sub_cc5c8d71.length
    if block.timestamp > sub_cc5c8d71[arg1].field_512:
        return 0
    if stor10:
        return 0
    require block.timestamp <= sub_cc5c8d71[arg1].field_512
    return (sub_cc5c8d71[arg1].field_512 - block.timestamp)
}

function canClaim(uint256 arg1) {
    require arg1 < sub_cc5c8d71.length
    if sub_cc5c8d71[arg1].field_0 != msg.sender:
        return 0
    if sub_cc5c8d71[arg1].field_1024:
        return 0
    if sub_cc5c8d71[arg1].field_1032:
        return 0
    if block.timestamp <= sub_cc5c8d71[arg1].field_512:
        if not stor10:
            return 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_b0d0cc09(?) {
    require arg1 < sub_cc5c8d71.length
    require not sub_cc5c8d71[arg1].field_1024
    require not sub_cc5c8d71[arg1].field_1032
    require sub_cc5c8d71[arg1].field_0 != msg.sender
    require block.timestamp > sub_cc5c8d71[arg1].field_768
    sub_cc5c8d71[arg1].field_1032 = 1
    totalDividends += sub_cc5c8d71[arg1].field_256
    account[address(msg.sender)].field_1024 = block.timestamp
    emit 0xdf166ee2: msg.sender, sub_cc5c8d71[arg1].field_256
}

function sub_daa99d4e(?) {
    require block.timestamp > account[address(arg1)].field_1024 + (31540000 * sub_117e6def)
    require account[address(arg1)].field_512 > 0
    if account[address(arg1)].field_512 > 0:
        require totalDividends + account[address(arg1)].field_512 >= totalDividends
        totalDividends += account[address(arg1)].field_512
        account[address(arg1)].field_512 = 0
    account[address(arg1)].field_768 = block.timestamp
    account[address(msg.sender)].field_1024 = block.timestamp
    emit 0x1c116131: address(arg1), account[address(arg1)].field_512
}

function claim(uint256 arg1) {
    require arg1 < sub_cc5c8d71.length
    require msg.sender == sub_cc5c8d71[arg1].field_0
    require not sub_cc5c8d71[arg1].field_1024
    require not sub_cc5c8d71[arg1].field_1032
    if block.timestamp <= sub_cc5c8d71[arg1].field_512:
        require stor10
    require arg1 < sub_cc5c8d71.length
    sub_cc5c8d71[arg1].field_1024 = 1
    call sub_cc5c8d71[arg1].field_0 with:
       value sub_cc5c8d71[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    account[stor15[arg1].field_0].field_1024 = block.timestamp
}

function createAccount(address arg1) {
    if not account[address(arg1)].field_0:
        account[address(arg1)].field_0 = arg1
        account[address(arg1)].field_256 = totalDividends
        account[address(arg1)].field_512 = 0
        account[address(arg1)].field_768 = 0
        account[address(arg1)].field_1024 = block.timestamp
        addressList.length++
        if not addressList.length <= addressList.length + 1:
            idx = addressList.length + 1
            while addressList.length > idx:
                addressList[idx].field_0 = 0
                idx = idx + 1
                continue 
        require addressList.length < addressList.length
        addressList[addressList.length].field_0 = arg1
}

function getAddressList() {
    if not addressList.length:
        mem[(32 * addressList.length) + 160] = 32
        mem[(32 * addressList.length) + 192] = addressList.length
        mem[(32 * addressList.length) + 224 len floor32(addressList.length)] = mem[160 len floor32(addressList.length)]
        return memory
          from (32 * addressList.length) + 160
           len (96 * addressList.length) + 64
    mem[160] = address(addressList.field_0)
    idx = 160
    s = 0
    while (32 * addressList.length) + 128 > idx:
        mem[idx + 32] = addressList[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * addressList.length) + 224 len floor32(addressList.length)] = mem[160 len floor32(addressList.length)]
    return Array(len=addressList.length, data=mem[160 len floor32(addressList.length)], mem[(32 * addressList.length) + floor32(addressList.length) + 224 len (32 * addressList.length) - floor32(addressList.length)]), 
}

function sub_d3fbc2ff(?) {
    if totalDividends > account[address(arg1)].field_256:
        require account[address(arg1)].field_256 <= totalDividends
        if totalDividends - account[address(arg1)].field_256:
            require totalDividends - account[address(arg1)].field_256
            require (totalDividends * balanceOf[stor12[address(arg1)].field_0]) - (account[address(arg1)].field_256 * balanceOf[stor12[address(arg1)].field_0]) / totalDividends - account[address(arg1)].field_256 == balanceOf[stor12[address(arg1)].field_0]
        require totalSupply
        require account[address(arg1)].field_512 + ((totalDividends * balanceOf[stor12[address(arg1)].field_0]) - (account[address(arg1)].field_256 * balanceOf[stor12[address(arg1)].field_0]) / totalSupply) >= account[address(arg1)].field_512
        account[address(arg1)].field_512 += (totalDividends * balanceOf[stor12[address(arg1)].field_0]) - (account[address(arg1)].field_256 * balanceOf[stor12[address(arg1)].field_0]) / totalSupply
        account[address(arg1)].field_256 = totalDividends
}

function sub_675c667c(?) {
    if not sub_bb073e80[address(arg1)].field_0:
        mem[(32 * sub_bb073e80[address(arg1)].field_0) + 160] = 32
        mem[(32 * sub_bb073e80[address(arg1)].field_0) + 192] = sub_bb073e80[address(arg1)].field_0
        mem[(32 * sub_bb073e80[address(arg1)].field_0) + 224 len floor32(sub_bb073e80[address(arg1)].field_0)] = mem[160 len floor32(sub_bb073e80[address(arg1)].field_0)]
        return memory
          from (32 * sub_bb073e80[address(arg1)].field_0) + 160
           len (96 * sub_bb073e80[address(arg1)].field_0) + 64
    mem[160] = sub_bb073e80[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * sub_bb073e80[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = sub_bb073e80[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_bb073e80[address(arg1)].field_0) + 224 len floor32(sub_bb073e80[address(arg1)].field_0)] = mem[160 len floor32(sub_bb073e80[address(arg1)].field_0)]
    return Array(len=sub_bb073e80[address(arg1)].field_0, data=mem[160 len floor32(sub_bb073e80[address(arg1)].field_0)], mem[(32 * sub_bb073e80[address(arg1)].field_0) + floor32(sub_bb073e80[address(arg1)].field_0) + 224 len (32 * sub_bb073e80[address(arg1)].field_0) - floor32(sub_bb073e80[address(arg1)].field_0)]), 
}

function sub_9fd9fae0(?) {
    if not sub_c69da161[address(arg1)].field_0:
        mem[(32 * sub_c69da161[address(arg1)].field_0) + 160] = 32
        mem[(32 * sub_c69da161[address(arg1)].field_0) + 192] = sub_c69da161[address(arg1)].field_0
        mem[(32 * sub_c69da161[address(arg1)].field_0) + 224 len floor32(sub_c69da161[address(arg1)].field_0)] = mem[160 len floor32(sub_c69da161[address(arg1)].field_0)]
        return memory
          from (32 * sub_c69da161[address(arg1)].field_0) + 160
           len (96 * sub_c69da161[address(arg1)].field_0) + 64
    mem[160] = sub_c69da161[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * sub_c69da161[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = sub_c69da161[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_c69da161[address(arg1)].field_0) + 224 len floor32(sub_c69da161[address(arg1)].field_0)] = mem[160 len floor32(sub_c69da161[address(arg1)].field_0)]
    return Array(len=sub_c69da161[address(arg1)].field_0, data=mem[160 len floor32(sub_c69da161[address(arg1)].field_0)], mem[(32 * sub_c69da161[address(arg1)].field_0) + floor32(sub_c69da161[address(arg1)].field_0) + 224 len (32 * sub_c69da161[address(arg1)].field_0) - floor32(sub_c69da161[address(arg1)].field_0)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not account[address(arg1)].field_0:
        if not account[address(arg1)].field_0:
            account[address(arg1)].field_0 = arg1
            account[address(arg1)].field_256 = totalDividends
            account[address(arg1)].field_512 = 0
            account[address(arg1)].field_768 = 0
            account[address(arg1)].field_1024 = block.timestamp
            addressList.length++
            if not addressList.length <= addressList.length + 1:
                idx = addressList.length + 1
                while addressList.length > idx:
                    addressList[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            require addressList.length < addressList.length
            addressList[addressList.length].field_0 = arg1
    if totalDividends > account[address(msg.sender)].field_256:
        require account[address(msg.sender)].field_256 <= totalDividends
        if totalDividends - account[address(msg.sender)].field_256:
            require totalDividends - account[address(msg.sender)].field_256
            require (totalDividends * balanceOf[stor12[address(msg.sender)].field_0]) - (account[address(msg.sender)].field_256 * balanceOf[stor12[address(msg.sender)].field_0]) / totalDividends - account[address(msg.sender)].field_256 == balanceOf[stor12[address(msg.sender)].field_0]
        require totalSupply
        require account[address(msg.sender)].field_512 + ((totalDividends * balanceOf[stor12[address(msg.sender)].field_0]) - (account[address(msg.sender)].field_256 * balanceOf[stor12[address(msg.sender)].field_0]) / totalSupply) >= account[address(msg.sender)].field_512
        account[address(msg.sender)].field_512 += (totalDividends * balanceOf[stor12[address(msg.sender)].field_0]) - (account[address(msg.sender)].field_256 * balanceOf[stor12[address(msg.sender)].field_0]) / totalSupply
        account[address(msg.sender)].field_256 = totalDividends
    if totalDividends > account[address(arg1)].field_256:
        require account[address(arg1)].field_256 <= totalDividends
        if totalDividends - account[address(arg1)].field_256:
            require totalDividends - account[address(arg1)].field_256
            require (totalDividends * balanceOf[stor12[address(arg1)].field_0]) - (account[address(arg1)].field_256 * balanceOf[stor12[address(arg1)].field_0]) / totalDividends - account[address(arg1)].field_256 == balanceOf[stor12[address(arg1)].field_0]
        require totalSupply
        require account[address(arg1)].field_512 + ((totalDividends * balanceOf[stor12[address(arg1)].field_0]) - (account[address(arg1)].field_256 * balanceOf[stor12[address(arg1)].field_0]) / totalSupply) >= account[address(arg1)].field_512
        account[address(arg1)].field_512 += (totalDividends * balanceOf[stor12[address(arg1)].field_0]) - (account[address(arg1)].field_256 * balanceOf[stor12[address(arg1)].field_0]) / totalSupply
        account[address(arg1)].field_256 = totalDividends
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    account[address(msg.sender)].field_1024 = block.timestamp
    account[address(arg1)].field_1024 = block.timestamp
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
