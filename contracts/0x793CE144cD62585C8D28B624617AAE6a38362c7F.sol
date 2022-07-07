contract main {




// =====================  Runtime code  =====================


#
#  - sub_2f5050f7(?)
#  - sub_5db1a2fa(?)
#
const getBalance = eth.balance(this.address)


address owner;
array of address accounts;
uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
mapping of uint256 sub_7161a621;
mapping of uint256 sub_bbcf998f;
uint256 sub_9a4b1207;
uint256 tokenId;
uint256 batch;

function tokenId() {
    return tokenId
}

function approvedContracts(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_3471c1dc(?) {
    require calldata.size - 4 >= 32
    return sub_bbcf998f[arg1]
}

function paused() {
    return bool(stor2)
}

function sub_676a7b76(?) {
    require calldata.size - 4 >= 32
    return sub_7161a621[arg1]
}

function sub_7161a621(?) {
    require calldata.size - 4 >= 32
    return sub_7161a621[arg1]
}

function owner() {
    return owner
}

function sub_9a4b1207(?) {
    return sub_9a4b1207
}

function batch() {
    return batch
}

function sub_bbcf998f(?) {
    require calldata.size - 4 >= 32
    return sub_bbcf998f[arg1]
}

function accounts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < accounts.length
    return address(accounts[arg1])
}

function pause() {
    require msg.sender == owner
    stor2 = 1
}

function _fallback() payable {
    require msg.value == msg.value
}

function unpause() {
    require msg.sender == owner
    stor2 = 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value == arg1
}

function sub_b76060f7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    batch = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_6d600510(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3[address(arg1)] = 1
}

function setCreator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    accounts.length++
    address(accounts[accounts.length]) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a4f2d089(?) {
    require msg.sender == owner
    accounts.length = 0
    idx = 0
    while accounts.length > idx:
        uint256(accounts[idx]) = 0
        idx = idx + 1
        continue 
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d8da99b0(?) {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + arg5.length + 160] = 0
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160] = arg6.length
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 192 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 192] = 0
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg7.length
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len arg7.length] = arg7[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 224] = 0
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224] = arg8.length
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len arg8.length] = arg8[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg8.length + 256] = 0
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + arg9.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 256] = arg9.length
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 288 len arg9.length] = arg9[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + arg9.length + 288] = 0
    require 0 < accounts.length
    idx = 0
    while address(accounts[idx]) != msg.sender:
        require idx + 1 < accounts.length
        mem[0] = 1
        idx = idx + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 288] = arg2
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 320] = 96
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 352] = arg4
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 384] = ceil32(arg3.length) + 128
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 416] = ceil32(arg3.length) + ceil32(arg5.length) + 160
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 448] = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 192
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 480] = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 224
    mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + ceil32(arg9.length) + 512] = ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 256
    stor4[arg1].field_0 = arg2
    stor4[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor4[arg1].field_512 = arg4
    stor4[arg1][3][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    stor4[arg1][4][].field_0 = Array(len=Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)], data=mem[ceil32(arg3.length) + ceil32(arg5.length) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]])
    stor4[arg1][5][].field_0 = Array(len=Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224 len -arg6.length + ceil32(arg6.length)], data=mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224 len -arg6.length + ceil32(arg6.length)]])
    stor4[arg1][6][].field_0 = Array(len=Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256 len -arg7.length + ceil32(arg7.length)], data=mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256 len -arg7.length + ceil32(arg7.length)]])
    stor4[arg1][7][].field_0 = Array(len=Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg8.length + 288 len -arg8.length + ceil32(arg8.length)], data=mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(arg8.length) + 288 len Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg8.length + 288 len -arg8.length + ceil32(arg8.length)]])
    emit 0xc9a88740: arg1
}



}
