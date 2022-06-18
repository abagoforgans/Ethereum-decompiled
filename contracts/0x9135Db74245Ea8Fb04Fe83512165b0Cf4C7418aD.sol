contract main {




// =====================  Runtime code  =====================


const name = 'test1'

const decimals = 9

const exchangeRate = 10

const sub_3d373e67(?) = (ext_call.return_data[0] / 10)

const symbol = 'ZZZZ'

const oldToken = 0xe9bcfab52c108505411849faba90e83c98101b


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3; offset 160
address owner;

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit 0xfeddf252: arg1, msg.sender, 0
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require -allowance[msg.sender][address(arg1)] - 1 >= arg2
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit 0xfeddf252: arg2, arg1, 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require -balanceOf[arg1] - 1 >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require -balanceOf[arg2] - 1 >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function sub_e9a23651(?) payable {
    require msg.sender == owner
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    call 0x00e9bcfab52c108505411849faba90e83c98101b.ifDestory(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    if ext_call.return_data[0]:
        call 0x00e9bcfab52c108505411849faba90e83c98101b.setDestoryAddress(address arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall 0xe9bcfab52c108505411849faba90e83c98101b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    call 0x00e9bcfab52c108505411849faba90e83c98101b.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function tokenExchange() payable {
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    staticcall 0xe9bcfab52c108505411849faba90e83c98101b.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    staticcall 0xe9bcfab52c108505411849faba90e83c98101b.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    call 0x00e9bcfab52c108505411849faba90e83c98101b.ifDestory(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    if ext_call.return_data[0]:
        call 0x00e9bcfab52c108505411849faba90e83c98101b.setDestoryAddress(address arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall 0xe9bcfab52c108505411849faba90e83c98101b.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9bcfab52c108505411849faba90e83c98101b)
    call 0x00e9bcfab52c108505411849faba90e83c98101b.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] / 10 <= balanceOf[address(stor3.field_0)]
    require ext_call.return_data[0] / 10 <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] -= ext_call.return_data[0] / 10
    require -balanceOf[msg.sender] - 1 >= ext_call.return_data[0] / 10
    balanceOf[msg.sender] += ext_call.return_data[0] / 10
    emit 0xfeddf252: (ext_call.return_data[0] / 10), owner, msg.sender
    return 1
}



}
