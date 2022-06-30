contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
uint256 sub_efe5c242;
mapping of uint256 sub_1eaf190c;
mapping of uint256 allowance;
address sub_83886e8eAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor11;

function name() {
    return name[0 len name.length]
}

function sub_1eaf190c(?) {
    return sub_1eaf190c[0]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    return sub_1eaf190c[address(arg1)]
}

function sub_83886e8e(?) {
    return sub_83886e8eAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_abc4db15(?) {
    return sub_efe5c242
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    if not arg2:
        revert with 0, 'The address must not be 0x0'
    return allowance[address(arg1)][address(arg2)]
}

function isAccountFrozen(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function sub_efe5c242(?) {
    return sub_efe5c242
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor11 - sub_1eaf190c[0])
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_ffe6569f(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_83886e8eAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_83886e8eAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    newOwner = arg1
}

function sub_9d267c76(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    sub_efe5c242 = arg1
    emit 0x8ed4a1e5: arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_890d9c1e(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    sub_83886e8eAddress = arg1
}

function freeze(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    require arg1 != msg.sender
    stor2[address(arg1)] = uint8(arg2)
    emit 0x99c2c87d: address(arg1), arg2
}

function burnFromOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    require arg1 <= stor11
    stor11 -= arg1
    require arg1 <= sub_1eaf190c[address(msg.sender)]
    sub_1eaf190c[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    require stor11 + arg1 >= stor11
    stor11 += arg1
    require sub_1eaf190c[address(msg.sender)] + arg1 >= sub_1eaf190c[address(msg.sender)]
    sub_1eaf190c[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    require arg2 <= stor11
    stor11 -= arg2
    require arg2 <= sub_1eaf190c[address(arg1)]
    sub_1eaf190c[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function sub_8809528c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_83886e8eAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_90274506(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[200 len 28]
    require arg2 <= sub_1eaf190c[address(msg.sender)]
    sub_1eaf190c[address(msg.sender)] -= arg2
    require sub_1eaf190c[address(arg1)] + arg2 >= sub_1eaf190c[address(arg1)]
    sub_1eaf190c[address(arg1)] += arg2
    if arg3:
        if arg1 != msg.sender:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x6e4f6e6c79206f776e65722063616e206578656375746520746869732066756e6374696f,
                            mem[200 len 28]
            require arg1 != msg.sender
            stor2[address(arg1)] = 1
            emit 0x99c2c87d: address(arg1), 1
    emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416e79206163636f756e7420696e20746869732066756e6374696f6e206d757374206e6f742062652066726f7a65,
                    mem[211 len 17]
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416e79206163636f756e7420696e20746869732066756e6374696f6e206d757374206e6f742062652066726f7a65,
                    mem[211 len 17]
    if block.timestamp < sub_efe5c242:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe596f752063616e6e6f74207472616e66657220746f6b656e73206265666f726520756e667265657a6520646174,
                    mem[210 len 18]
    if not arg1:
        revert with 0, 'The address must not be 0x0'
    require arg2 <= sub_1eaf190c[address(msg.sender)]
    sub_1eaf190c[address(msg.sender)] -= arg2
    require sub_1eaf190c[address(arg1)] + arg2 >= sub_1eaf190c[address(arg1)]
    sub_1eaf190c[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416e79206163636f756e7420696e20746869732066756e6374696f6e206d757374206e6f742062652066726f7a65,
                    mem[211 len 17]
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416e79206163636f756e7420696e20746869732066756e6374696f6e206d757374206e6f742062652066726f7a65,
                    mem[211 len 17]
    if stor2[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416e79206163636f756e7420696e20746869732066756e6374696f6e206d757374206e6f742062652066726f7a65,
                    mem[211 len 17]
    if block.timestamp < sub_efe5c242:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe596f752063616e6e6f74207472616e66657220746f6b656e73206265666f726520756e667265657a6520646174,
                    mem[210 len 18]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= sub_1eaf190c[address(arg1)]
    sub_1eaf190c[address(arg1)] -= arg3
    require sub_1eaf190c[address(arg2)] + arg3 >= sub_1eaf190c[address(arg2)]
    sub_1eaf190c[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}



}
