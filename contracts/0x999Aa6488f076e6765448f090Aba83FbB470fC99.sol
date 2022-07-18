contract main {




// =====================  Runtime code  =====================


uint256 tokenTotalSupply;
address stor3;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor12;
uint8 stor13; offset 160
uint8 stor13; offset 168
uint128 stor13; offset 168
uint128 stor13; offset 160
address stor13;
address stor14;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function tokenTotalSupply() payable {
    return tokenTotalSupply
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == stor3)
}

function finalizeMigration() payable {
    if stor12 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x2e4f6e6c79204d6967726174696f6e204167656e742063616e2066696e616c697a6520746865206d6967726174696f6e,
                    mem[212 len 16]
    stor12 = 0
    Mask(96, 0, stor13.field_160) = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require arg1
    emit OwnershipTransferred(stor3, arg1);
    stor3 = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address can't be blank.'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[210 len 18]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor14, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address can't be blank.'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[210 len 18]
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'Subtraction error.'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address can't be blank.'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[210 len 18]
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'Adding error.'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function migrate() payable {
    if not stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e4d6967726174696f6e20697320636c6f736564206f7220686176656e27742073746172746564,
                    mem[203 len 25]
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0, 'No tokens to migrate.'
    balanceOf[address(msg.sender)] = 0
    emit 0xc1a660f7: balanceOf[address(msg.sender)], msg.sender
    require ext_code.size(address(stor13.field_0))
    call address(stor13.field_0).0xc31e8e4f with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMigrationAgent(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    if not arg1:
        revert with 0, 'The address can't be blank.'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[210 len 18]
    if stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4d6967726174696f6e204167656e74207761732073706563696669656420616c7265616479,
                    mem[202 len 26]
    if uint8(stor13.field_160):
        revert with 0, 'Contract was already migrated.'
    stor12 = arg1
    address(stor13.field_0) = arg1
}

function burnOwnTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                    mem[231 len 29]
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe43616e2774206275726e206d6f726520746f6b656e73207468616e20796f75206f776e,
                    mem[200 len 28]
    if arg1 > totalSupply:
        revert with 0, 'Subtraction error.'
    totalSupply -= arg1
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'Subtraction error.'
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                  arg1,
                  64,
                  0,
                  msg.sender,
                  0,
    emit Transfer(arg1, msg.sender, 0);
}

function setCrowdsale(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    if not arg1:
        revert with 0, 'The address can't be blank.'
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[210 len 18]
    if uint8(stor13.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e43726f776473616c6520616464726573732077617320616c726561647920736574,
                    mem[198 len 30]
    Mask(88, 0, stor13.field_168) = 1
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'Adding error.'
    totalSupply += arg2
    balanceOf[address(arg1)] = arg2
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'The address can't be blank.'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[242 len 18]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    67,
                    0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                    mem[263 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Subtraction error.'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'Adding error.'
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg2, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                  arg2,
                  64,
                  0,
                  msg.sender,
                  arg1,
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 'The address can't be blank.'
    if arg2 == this.address:
        revert with 0, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[242 len 18]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    67,
                    0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                    mem[263 len 29]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 37, 0x2e5472616e736665722076616c756520657863656564732074686520616c6c6f77616e6365, mem[233 len 27]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Subtraction error.'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'Adding error.'
    balanceOf[address(arg2)] += arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Subtraction error.'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                  arg3,
                  64,
                  0,
                  arg1,
                  arg2,
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not arg1:
        revert with 0, 'The address can't be blank.'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[ceil32(arg3.length) + 242 len 18]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    67,
                    0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                    mem[ceil32(arg3.length) + 263 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Subtraction error.'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'Adding error.'
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + 128] = arg2
        mem[ceil32(arg3.length) + 160] = 64
        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
                          arg3.length,
                          Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                          msg.sender,
                          arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
                          arg3.length,
                          Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                          mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                          msg.sender,
                          arg1,
        mem[ceil32(arg3.length) + 128] = arg2
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                      mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                      msg.sender,
                      arg1,
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      64,
                      arg3.length,
                      Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                      msg.sender,
                      arg1,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      64,
                      arg3.length,
                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                      mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                      msg.sender,
                      arg1,
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  0,
                  Mask(224, 0, arg2),
                  msg.sender,
                  arg1,
    return 0, 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not arg2:
        revert with 0, 'The address can't be blank.'
    if arg2 == this.address:
        revert with 0, 
                    32,
                    46,
                    0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                    mem[ceil32(arg4.length) + 242 len 18]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    67,
                    0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                    mem[ceil32(arg4.length) + 263 len 29]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    37,
                    0x2e5472616e736665722076616c756520657863656564732074686520616c6c6f77616e6365,
                    mem[ceil32(arg4.length) + 233 len 27]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Subtraction error.'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'Adding error.'
    balanceOf[address(arg2)] += arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Subtraction error.'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if ext_code.size(arg2) <= 0:
        mem[ceil32(arg4.length) + 128] = arg3
        mem[ceil32(arg4.length) + 160] = 64
        mem[ceil32(arg4.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32],
                          arg4.length,
                          Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256,
                          arg1,
                          arg2,
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 224] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32],
                          arg4.length,
                          Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                          mem[(2 * ceil32(arg4.length)) + 224 len floor32(arg4.length) + -ceil32(arg4.length) + 32],
                          arg1,
                          arg2,
        mem[ceil32(arg4.length) + 128] = arg3
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                      mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)],
                      arg1,
                      arg2,
        mem[ceil32(arg4.length) + 128] = 1
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg4.length) + 128] = 0x4c12301900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 228] = 128
    mem[ceil32(arg4.length) + 260] = arg4.length
    mem[ceil32(arg4.length) + 292 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    require ext_code.size(arg2)
    call arg2 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + 128] = arg3
    mem[ceil32(arg4.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg3),
                      64,
                      arg4.length,
                      Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256,
                      arg1,
                      arg2,
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 224] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg3),
                      64,
                      arg4.length,
                      Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                      mem[(2 * ceil32(arg4.length)) + 224 len floor32(arg4.length) + -ceil32(arg4.length) + 32],
                      arg1,
                      arg2,
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  0,
                  Mask(224, 0, arg3),
                  arg1,
                  arg2,
    return 0, 1
}

function transferBatch(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[64] = (32 * arg1.length) + 160
    if not arg2:
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        67,
                        0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                        mem[(32 * arg1.length) + 295 len 29]
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 'Subtraction error.'
        mem[0] = msg.sender
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'The address can't be blank.'
            if mem[(32 * idx) + 140 len 20] == this.address:
                revert with 0, 
                            32,
                            46,
                            0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                            mem[mem[64] + 114 len 18]
            require idx < mem[96]
            if balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 < balanceOf[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'Adding error.'
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < mem[96]
            require idx < mem[96]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                _233 = mem[(32 * idx) + 128]
                _234 = mem[64]
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                _236 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _236:
                    mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _236 % 32:
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len _236 + _234 + -mem[64] + 96],
                                  msg.sender,
                                  address(_233),
                    require idx < mem[96]
                    _372 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_372));
                else:
                    mem[floor32(_236) + _234 + 96] = mem[floor32(_236) + _234 + -(_236 % 32) + 128 len _236 % 32]
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len floor32(_236) + _234 + -mem[64] + 128],
                                  msg.sender,
                                  address(_233),
                    require idx < mem[96]
                    _382 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_382));
            else:
                _237 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg1.length) + 128]
                _243 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _243:
                    mem[mem[64] + s + 164] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _243 % 32:
                    require ext_code.size(address(_237))
                    call address(_237).tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2, 128, mem[mem[64] + 132 len _243 + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _399 = mem[(32 * idx) + 128]
                    _400 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _402 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _402:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _402 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _402 + _400 + -mem[64] + 96],
                                      msg.sender,
                                      address(_399),
                        require idx < mem[96]
                        _486 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_486));
                    else:
                        mem[floor32(_402) + _400 + 96] = mem[floor32(_402) + _400 + -(_402 % 32) + 128 len _402 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_402) + _400 + -mem[64] + 128],
                                      msg.sender,
                                      address(_399),
                        require idx < mem[96]
                        _502 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_502));
                else:
                    mem[floor32(_243) + mem[64] + 164] = mem[floor32(_243) + mem[64] + -(_243 % 32) + 196 len _243 % 32]
                    require ext_code.size(address(_237))
                    call address(_237).tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2, 128, mem[mem[64] + 132 len floor32(_243) + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _408 = mem[(32 * idx) + 128]
                    _409 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _411 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _411:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _411 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _411 + _409 + -mem[64] + 96],
                                      msg.sender,
                                      address(_408),
                        require idx < mem[96]
                        _491 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_491));
                    else:
                        mem[floor32(_411) + _409 + 96] = mem[floor32(_411) + _409 + -(_411 % 32) + 128 len _411 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_411) + _409 + -mem[64] + 128],
                                      msg.sender,
                                      address(_408),
                        require idx < mem[96]
                        _505 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_505));
            idx = idx + 1
            continue 
    else:
        require arg2
        if arg2 * arg1.length / arg2 != arg1.length:
            revert with 0, 'Multiplying error.'
        if arg2 * arg1.length > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        67,
                        0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                        mem[(32 * arg1.length) + 295 len 29]
        if arg2 * arg1.length > balanceOf[address(msg.sender)]:
            revert with 0, 'Subtraction error.'
        mem[0] = msg.sender
        balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'The address can't be blank.'
            if mem[(32 * idx) + 140 len 20] == this.address:
                revert with 0, 
                            32,
                            46,
                            0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                            mem[mem[64] + 114 len 18]
            require idx < mem[96]
            if balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 < balanceOf[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'Adding error.'
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < mem[96]
            require idx < mem[96]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                _228 = mem[(32 * idx) + 128]
                _229 = mem[64]
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                _231 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _231:
                    mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _231 % 32:
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len _231 + _229 + -mem[64] + 96],
                                  msg.sender,
                                  address(_228),
                    require idx < mem[96]
                    _366 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_366));
                else:
                    mem[floor32(_231) + _229 + 96] = mem[floor32(_231) + _229 + -(_231 % 32) + 128 len _231 % 32]
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len floor32(_231) + _229 + -mem[64] + 128],
                                  msg.sender,
                                  address(_228),
                    require idx < mem[96]
                    _378 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_378));
            else:
                _232 = mem[(32 * idx) + 128]
                _238 = mem[64]
                mem[mem[64]] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg1.length) + 128]
                _240 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _240:
                    mem[mem[64] + s + 164] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _240 % 32:
                    require ext_code.size(address(_232))
                    call address(_232).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _240 + _238 + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _394 = mem[(32 * idx) + 128]
                    _395 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _397 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _397:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _397 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _397 + _395 + -mem[64] + 96],
                                      msg.sender,
                                      address(_394),
                        require idx < mem[96]
                        _476 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_476));
                    else:
                        mem[floor32(_397) + _395 + 96] = mem[floor32(_397) + _395 + -(_397 % 32) + 128 len _397 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_397) + _395 + -mem[64] + 128],
                                      msg.sender,
                                      address(_394),
                        require idx < mem[96]
                        _496 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_496));
                else:
                    mem[floor32(_240) + _238 + 164] = mem[floor32(_240) + _238 + -(_240 % 32) + 196 len _240 % 32]
                    require ext_code.size(address(_232))
                    call address(_232).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_240) + _238 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _404 = mem[(32 * idx) + 128]
                    _405 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _407 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _407:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _407 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _407 + _405 + -mem[64] + 96],
                                      msg.sender,
                                      address(_404),
                        require idx < mem[96]
                        _481 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_481));
                    else:
                        mem[floor32(_407) + _405 + 96] = mem[floor32(_407) + _405 + -(_407 % 32) + 128 len _407 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_407) + _405 + -mem[64] + 128],
                                      msg.sender,
                                      address(_404),
                        require idx < mem[96]
                        _499 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_499));
            idx = idx + 1
            continue 
    return 1
}

function sub_76df1d5f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + ceil32(arg3.length) + 160
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len arg3.length] = arg3[all]
    mem[(32 * arg1.length) + arg3.length + 160] = 0
    if not arg2:
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        67,
                        0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                        mem[(32 * arg1.length) + ceil32(arg3.length) + 295 len 29]
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 'Subtraction error.'
        mem[0] = msg.sender
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'The address can't be blank.'
            if mem[(32 * idx) + 140 len 20] == this.address:
                revert with 0, 
                            32,
                            46,
                            0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                            mem[mem[64] + 114 len 18]
            require idx < mem[96]
            if balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 < balanceOf[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'Adding error.'
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < mem[96]
            require idx < mem[96]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                _233 = mem[(32 * idx) + 128]
                _234 = mem[64]
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                _236 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _236:
                    mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _236 % 32:
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len _236 + _234 + -mem[64] + 96],
                                  msg.sender,
                                  address(_233),
                    require idx < mem[96]
                    _372 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_372));
                else:
                    mem[floor32(_236) + _234 + 96] = mem[floor32(_236) + _234 + -(_236 % 32) + 128 len _236 % 32]
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len floor32(_236) + _234 + -mem[64] + 128],
                                  msg.sender,
                                  address(_233),
                    require idx < mem[96]
                    _382 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_382));
            else:
                _237 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg1.length) + 128]
                _243 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _243:
                    mem[mem[64] + s + 164] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _243 % 32:
                    require ext_code.size(address(_237))
                    call address(_237).tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2, 128, mem[mem[64] + 132 len _243 + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _399 = mem[(32 * idx) + 128]
                    _400 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _402 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _402:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _402 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _402 + _400 + -mem[64] + 96],
                                      msg.sender,
                                      address(_399),
                        require idx < mem[96]
                        _486 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_486));
                    else:
                        mem[floor32(_402) + _400 + 96] = mem[floor32(_402) + _400 + -(_402 % 32) + 128 len _402 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_402) + _400 + -mem[64] + 128],
                                      msg.sender,
                                      address(_399),
                        require idx < mem[96]
                        _502 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_502));
                else:
                    mem[floor32(_243) + mem[64] + 164] = mem[floor32(_243) + mem[64] + -(_243 % 32) + 196 len _243 % 32]
                    require ext_code.size(address(_237))
                    call address(_237).tokenFallback(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, arg2, 128, mem[mem[64] + 132 len floor32(_243) + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _408 = mem[(32 * idx) + 128]
                    _409 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _411 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _411:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _411 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _411 + _409 + -mem[64] + 96],
                                      msg.sender,
                                      address(_408),
                        require idx < mem[96]
                        _491 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_491));
                    else:
                        mem[floor32(_411) + _409 + 96] = mem[floor32(_411) + _409 + -(_411 % 32) + 128 len _411 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_411) + _409 + -mem[64] + 128],
                                      msg.sender,
                                      address(_408),
                        require idx < mem[96]
                        _505 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_505));
            idx = idx + 1
            continue 
    else:
        require arg2
        if arg2 * arg1.length / arg2 != arg1.length:
            revert with 0, 'Multiplying error.'
        if arg2 * arg1.length > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        67,
                        0x2e537065636966696564206164647265737320686173206c65737320746f6b656e73207468616e20726571756972656420666f722074686973206f7065726174696f6e,
                        mem[(32 * arg1.length) + ceil32(arg3.length) + 295 len 29]
        if arg2 * arg1.length > balanceOf[address(msg.sender)]:
            revert with 0, 'Subtraction error.'
        mem[0] = msg.sender
        balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'The address can't be blank.'
            if mem[(32 * idx) + 140 len 20] == this.address:
                revert with 0, 
                            32,
                            46,
                            0x2e54686520616464726573732063616e277420706f696e7420746f2045676720736d61727420636f6e7472616374,
                            mem[mem[64] + 114 len 18]
            require idx < mem[96]
            if balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 < balanceOf[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'Adding error.'
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
            require idx < mem[96]
            require idx < mem[96]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                _228 = mem[(32 * idx) + 128]
                _229 = mem[64]
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                _231 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _231:
                    mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _231 % 32:
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len _231 + _229 + -mem[64] + 96],
                                  msg.sender,
                                  address(_228),
                    require idx < mem[96]
                    _366 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_366));
                else:
                    mem[floor32(_231) + _229 + 96] = mem[floor32(_231) + _229 + -(_231 % 32) + 128 len _231 % 32]
                    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                  mem[mem[64] len floor32(_231) + _229 + -mem[64] + 128],
                                  msg.sender,
                                  address(_228),
                    require idx < mem[96]
                    _378 = mem[(32 * idx) + 128]
                    mem[mem[64]] = arg2
                    emit Transfer(arg2, msg.sender, address(_378));
            else:
                _232 = mem[(32 * idx) + 128]
                _238 = mem[64]
                mem[mem[64]] = 0x4c12301900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg2
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = mem[(32 * arg1.length) + 128]
                _240 = mem[(32 * arg1.length) + 128]
                s = 0
                while s < _240:
                    mem[mem[64] + s + 164] = mem[(32 * arg1.length) + s + 160]
                    s = s + 32
                    continue 
                if not _240 % 32:
                    require ext_code.size(address(_232))
                    call address(_232).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _240 + _238 + -mem[64] + 160]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _394 = mem[(32 * idx) + 128]
                    _395 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _397 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _397:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _397 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _397 + _395 + -mem[64] + 96],
                                      msg.sender,
                                      address(_394),
                        require idx < mem[96]
                        _476 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_476));
                    else:
                        mem[floor32(_397) + _395 + 96] = mem[floor32(_397) + _395 + -(_397 % 32) + 128 len _397 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_397) + _395 + -mem[64] + 128],
                                      msg.sender,
                                      address(_394),
                        require idx < mem[96]
                        _496 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_496));
                else:
                    mem[floor32(_240) + _238 + 164] = mem[floor32(_240) + _238 + -(_240 % 32) + 196 len _240 % 32]
                    require ext_code.size(address(_232))
                    call address(_232).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len floor32(_240) + _238 + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    _404 = mem[(32 * idx) + 128]
                    _405 = mem[64]
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[(32 * arg1.length) + 128]
                    _407 = mem[(32 * arg1.length) + 128]
                    s = 0
                    while s < _407:
                        mem[mem[64] + s + 96] = mem[(32 * arg1.length) + s + 160]
                        s = s + 32
                        continue 
                    if not _407 % 32:
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len _407 + _405 + -mem[64] + 96],
                                      msg.sender,
                                      address(_404),
                        require idx < mem[96]
                        _481 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_481));
                    else:
                        mem[floor32(_407) + _405 + 96] = mem[floor32(_407) + _405 + -(_407 % 32) + 128 len _407 % 32]
                        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                                      mem[mem[64] len floor32(_407) + _405 + -mem[64] + 128],
                                      msg.sender,
                                      address(_404),
                        require idx < mem[96]
                        _499 = mem[(32 * idx) + 128]
                        mem[mem[64]] = arg2
                        emit Transfer(arg2, msg.sender, address(_499));
            idx = idx + 1
            continue 
    return 1
}



}
