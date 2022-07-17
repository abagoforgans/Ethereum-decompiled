contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
mapping of struct whiteList;
uint8 sub_46f5f09e;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    return Mask(8, 248, whiteList[arg1].field_0)
}

function _totalSupply() {
    return _totalSupply
}

function sub_46f5f09e(?) {
    return Mask(8, 248, sub_46f5f09e)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function managers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    require msg.sender == stor1
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
    stor1 = 0
}

function totalSupply() {
    if balances[0] > _totalSupply:
        revert with 0, 'Result can not be negative'
    return (_totalSupply - balances[0])
}

function frozen(address arg1) {
    require calldata.size - 4 >= 32
    return (Mask(1, 250, whiteList[address(arg1)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000)
}

function sub_40cb2de4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x644f6e6c792074686520636f6e7472616374206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[213 len 15]
    sub_46f5f09e = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x644f6e6c792074686520636f6e7472616374206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[213 len 15]
    stor1 = arg1
}

function addManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x644f6e6c792074686520636f6e7472616374206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[213 len 15]
    stor2[address(arg1)] = 1
}

function removeManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x644f6e6c792074686520636f6e7472616374206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[213 len 15]
    stor2[address(arg1)] = 0
}

function addToSendAllowed(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4f6e6c79206d616e6167657273206d617920706572666f726d207468697320616374696f,
                    mem[201 len 27]
    whiteList[address(arg1)].field_0 = 0
    whiteList[address(arg1)].field_256 = 0
    whiteList[address(arg1)].field_256 = 0
}

function addToReceiveAllowed(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4f6e6c79206d616e6167657273206d617920706572666f726d207468697320616374696f,
                    mem[201 len 27]
    whiteList[address(arg1)].field_0 = 0
    whiteList[address(arg1)].field_256 = 0
    whiteList[address(arg1)].field_256 = 0
}

function freeze(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x644f6e6c792074686520636f6e7472616374206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[213 len 15]
    whiteList[address(arg1)].field_0 = 0
    whiteList[address(arg1)].field_256 = 0
    whiteList[address(arg1)].field_256 = 0
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x644f6e6c792074686520636f6e7472616374206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[213 len 15]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function removeFromSendAllowed(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4f6e6c79206d616e6167657273206d617920706572666f726d207468697320616374696f,
                    mem[201 len 27]
    if Mask(1, 249, whiteList[address(arg1)].field_0) == 0x200000000000000000000000000000000000000000000000000000000000000:
        whiteList[address(arg1)].field_0 = uint8(whiteList[address(arg1)].field_0 xor 0x200000000000000000000000000000000000000000000000000000000000000) >> 248 or Mask(248, 8, whiteList[address(arg1)].field_0)
}

function removeFromReceiveAllowed(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4f6e6c79206d616e6167657273206d617920706572666f726d207468697320616374696f,
                    mem[201 len 27]
    if Mask(1, 248, whiteList[address(arg1)].field_0) == 0x100000000000000000000000000000000000000000000000000000000000000:
        whiteList[address(arg1)].field_0 = uint8(whiteList[address(arg1)].field_0 xor 0x100000000000000000000000000000000000000000000000000000000000000) >> 248 or Mask(248, 8, whiteList[address(arg1)].field_0)
}

function unFreeze(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x644f6e6c792074686520636f6e7472616374206f776e65722063616e206578656375746520746869732066756e6374696f,
                    mem[213 len 15]
    if Mask(1, 250, whiteList[address(arg1)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000:
        whiteList[address(arg1)].field_0 = uint8(whiteList[address(arg1)].field_0 xor 0x400000000000000000000000000000000000000000000000000000000000000) >> 248 or Mask(248, 8, whiteList[address(arg1)].field_0)
}

function messageForTransferRestriction(uint8 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= 16:
        return 'Insufficient Balance to send'
    if arg1 >= 8:
        return Array(len=38, data=0x72546f204163636f756e742069732046726f7a656e2c20636f6e746163742070726f76696465, mem[230 len 26], mem[282 len 6]), 
    if arg1 >= 4:
        return Array(len=40, data=0x6446726f6d204163636f756e742069732046726f7a656e2c20636f6e746163742070726f76696465, mem[232 len 24], mem[280 len 8]), 
    if arg1 >= 3:
        return Array(len=60, data=0x6e426f74682053656e64696e6720616e6420726563656976696e67206164647265737320686173206e6f74206265656e204b594320417070726f7665, mem[252 len 4], Mask(224, -256, mem[252 len 4]) << 256), 
    if arg1 >= 2:
        return Array(len=43, data=0x64526563656976696e67206164647265737320686173206e6f74206265656e204b594320417070726f7665, mem[235 len 21], mem[277 len 11]), 
    if arg1 < 1:
        return 'Transfer Allowed'
    return Array(len=41, data=0x7253656e64696e67206164647265737320686173206e6f74206265656e204b594320417070726f7665, mem[233 len 23], mem[279 len 9]), 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if Mask(1, 250, whiteList[address(arg1)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'One of the Accounts are Frozen'
    if Mask(1, 250, whiteList[address(msg.sender)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'One of the Accounts are Frozen'
    if Mask(1, 249, sub_46f5f09e):
        if Mask(1, 249, whiteList[address(msg.sender)].field_0) != 0x200000000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6e53656e64696e67204163636f756e74206973206e6f742077686974656c69737465,
                        mem[198 len 30]
    if Mask(1, 248, sub_46f5f09e):
        if Mask(1, 248, whiteList[address(arg1)].field_0) != 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64526563656976696e67204163636f756e74206973206e6f742057686974656c69737465,
                        mem[200 len 28]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeFromBothSendAndReceiveAllowed(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4f6e6c79206d616e6167657273206d617920706572666f726d207468697320616374696f,
                    mem[201 len 27]
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4f6e6c79206d616e6167657273206d617920706572666f726d207468697320616374696f,
                    mem[201 len 27]
    if Mask(1, 249, whiteList[address(arg1)].field_0) == 0x200000000000000000000000000000000000000000000000000000000000000:
        whiteList[address(arg1)].field_0 = uint8(whiteList[address(arg1)].field_0 xor 0x200000000000000000000000000000000000000000000000000000000000000) >> 248 or Mask(248, 8, whiteList[address(arg1)].field_0)
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4f6e6c79206d616e6167657273206d617920706572666f726d207468697320616374696f,
                    mem[201 len 27]
    if Mask(1, 248, whiteList[address(arg1)].field_0) == 0x100000000000000000000000000000000000000000000000000000000000000:
        whiteList[address(arg1)].field_0 = uint8(whiteList[address(arg1)].field_0 xor 0x100000000000000000000000000000000000000000000000000000000000000) >> 248 or Mask(248, 8, whiteList[address(arg1)].field_0)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if Mask(1, 250, whiteList[address(arg1)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'One of the Accounts are Frozen'
    if Mask(1, 250, whiteList[address(msg.sender)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'One of the Accounts are Frozen'
    if Mask(1, 249, sub_46f5f09e):
        if Mask(1, 249, whiteList[address(msg.sender)].field_0) != 0x200000000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6e53656e64696e67204163636f756e74206973206e6f742077686974656c69737465,
                        mem[198 len 30]
    if Mask(1, 248, sub_46f5f09e):
        if Mask(1, 248, whiteList[address(arg1)].field_0) != 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64526563656976696e67204163636f756e74206973206e6f742057686974656c69737465,
                        mem[200 len 28]
    require arg1
    require arg1 != this.address
    if arg2 > balances[msg.sender]:
        revert with 0, 'Result can not be negative'
    balances[msg.sender] -= arg2
    if arg2 + balances[arg1] < balances[arg1]:
        revert with 0, 'Can not add Negative Values'
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if Mask(1, 250, whiteList[address(arg2)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'One of the Accounts are Frozen'
    if Mask(1, 250, whiteList[address(arg1)].field_0) == 0x400000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'One of the Accounts are Frozen'
    if Mask(1, 249, sub_46f5f09e):
        if Mask(1, 249, whiteList[address(arg1)].field_0) != 0x200000000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x6e53656e64696e67204163636f756e74206973206e6f742077686974656c69737465,
                        mem[198 len 30]
    if Mask(1, 248, sub_46f5f09e):
        if Mask(1, 248, whiteList[address(arg2)].field_0) != 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x64526563656976696e67204163636f756e74206973206e6f742057686974656c69737465,
                        mem[200 len 28]
    require arg2
    require arg2 != this.address
    if arg3 > balances[address(arg1)]:
        revert with 0, 'Result can not be negative'
    balances[address(arg1)] -= arg3
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Result can not be negative'
    allowance[address(arg1)][msg.sender] -= arg3
    if arg3 + balances[address(arg2)] < balances[address(arg2)]:
        revert with 0, 'Can not add Negative Values'
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function detectTransferRestriction(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if Mask(1, 249, sub_46f5f09e) != 0x200000000000000000000000000000000000000000000000000000000000000:
        if Mask(1, 248, sub_46f5f09e) != 0x100000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                    if balances[address(arg1)] >= arg3:
                        return 0
                    return 16
                if balances[address(arg1)] >= arg3:
                    return 8
                return 24
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 4
                return 20
            if balances[address(arg1)] >= arg3:
                return 12
            return 28
        if Mask(1, 248, whiteList[address(arg1)].field_0) == 0x100000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                    if balances[address(arg1)] >= arg3:
                        return 0
                    return 16
                if balances[address(arg1)] >= arg3:
                    return 8
                return 24
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 4
                return 20
            if balances[address(arg1)] >= arg3:
                return 12
            return 28
        if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 2
                return 18
            if balances[address(arg1)] >= arg3:
                return 10
            return 26
        if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if balances[address(arg1)] >= arg3:
                return 6
            return 22
        if balances[address(arg1)] >= arg3:
            return 14
        return 30
    if Mask(1, 249, whiteList[address(arg2)].field_0) == 0x200000000000000000000000000000000000000000000000000000000000000:
        if Mask(1, 248, sub_46f5f09e) != 0x100000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                    if balances[address(arg1)] >= arg3:
                        return 0
                    return 16
                if balances[address(arg1)] >= arg3:
                    return 8
                return 24
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 4
                return 20
            if balances[address(arg1)] >= arg3:
                return 12
            return 28
        if Mask(1, 248, whiteList[address(arg1)].field_0) == 0x100000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                    if balances[address(arg1)] >= arg3:
                        return 0
                    return 16
                if balances[address(arg1)] >= arg3:
                    return 8
                return 24
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 4
                return 20
            if balances[address(arg1)] >= arg3:
                return 12
            return 28
        if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 2
                return 18
            if balances[address(arg1)] >= arg3:
                return 10
            return 26
        if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if balances[address(arg1)] >= arg3:
                return 6
            return 22
        if balances[address(arg1)] >= arg3:
            return 14
        return 30
    if Mask(1, 248, sub_46f5f09e) != 0x100000000000000000000000000000000000000000000000000000000000000:
        if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 1
                return 17
            if balances[address(arg1)] >= arg3:
                return 9
            return 25
        if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if balances[address(arg1)] >= arg3:
                return 5
            return 21
        if balances[address(arg1)] >= arg3:
            return 13
        return 29
    if Mask(1, 248, whiteList[address(arg1)].field_0) == 0x100000000000000000000000000000000000000000000000000000000000000:
        if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
                if balances[address(arg1)] >= arg3:
                    return 1
                return 17
            if balances[address(arg1)] >= arg3:
                return 9
            return 25
        if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if balances[address(arg1)] >= arg3:
                return 5
            return 21
        if balances[address(arg1)] >= arg3:
            return 13
        return 29
    if Mask(1, 250, whiteList[address(arg1)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
        if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
            if balances[address(arg1)] >= arg3:
                return 3
            return 19
        if balances[address(arg1)] >= arg3:
            return 11
        return 27
    if Mask(1, 250, whiteList[address(arg2)].field_0) != 0x400000000000000000000000000000000000000000000000000000000000000:
        if balances[address(arg1)] >= arg3:
            return 7
        return 23
    if balances[address(arg1)] >= arg3:
        return 15
    return 31
}



}
