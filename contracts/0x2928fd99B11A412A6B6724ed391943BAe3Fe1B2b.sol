contract main {




// =====================  Runtime code  =====================


const name = Array(len=39, data='Main Universal Standard of Token', 'ization', Mask(56, -256, 'Main Universal Standard of Token', 'ization') << 256)

const decimals = 8

const cap = 5 * 10^16

const symbol = 'MUST'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint8 stor5;
uint8 stor5; offset 8

function owners(address arg1) {
    return bool(stor3[arg1])
}

function mintingFinished() {
    return bool(uint8(stor5.field_8))
}

function totalSupply() {
    return totalSupply
}

function isOwner(address arg1) {
    return bool(stor3[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isMinter(address arg1) {
    return bool(stor4[address(arg1)])
}

function finalized() {
    return bool(uint8(stor5.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) {
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor5.field_0)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addOwner(address arg1) {
    if not stor3[address(msg.sender)]:
        revert with 0, 'aven't enough right to access'
    require bool(stor3[address(arg1)]) != 1
    stor3[address(arg1)] = 1
    emit AddOwner(arg1);
    return 0
}

function addMinter(address arg1) {
    if not stor3[address(msg.sender)]:
        revert with 0, 'aven't enough right to access'
    require bool(stor4[address(arg1)]) != 1
    stor4[address(arg1)] = 1
    emit AddMinter(arg1);
    return 0
}

function deleteOwner(address arg1) {
    if not stor3[address(msg.sender)]:
        revert with 0, 'aven't enough right to access'
    require bool(stor3[address(arg1)]) != 0
    stor3[address(arg1)] = 0
    emit DeleteOwner(arg1);
    return 0
}

function deleteMinter(address arg1) {
    if not stor3[address(msg.sender)]:
        revert with 0, 'aven't enough right to access'
    require bool(stor4[address(arg1)]) != 0
    stor4[address(arg1)] = 0
    emit DeleteMinter(arg1);
    return 0
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require uint8(stor5.field_0)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require uint8(stor5.field_0)
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function finalize() {
    require not uint8(stor5.field_0)
    if not stor3[address(msg.sender)]:
        revert with 0, 'aven't enough right to access'
    uint8(stor5.field_0) = 1
    emit Finalize()
    require 1 == bool(uint8(stor5.field_0))
    if not stor3[address(msg.sender)]:
        revert with 0, 'aven't enough right to access'
    require not uint8(stor5.field_8)
    uint8(stor5.field_8) = 1
    emit MintFinished()
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function mint(address arg1, uint256 arg2) {
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= 5 * 10^16
    if not stor4[address(msg.sender)]:
        revert with 0, 'aven't enough right to access'
    require not uint8(stor5.field_8)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require uint8(stor5.field_0)
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    else:
        emit Transfer(arg2, msg.sender, arg1);
        mem[ceil32(arg3.length) + 128] = arg2
        mem[ceil32(arg3.length) + 160] = 64
        mem[ceil32(arg3.length) + 192] = arg3.length
        if 0 < arg3.length:
            mem[ceil32(arg3.length) + 224] = mem[128]
            mem[ceil32(arg3.length) + 256 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        emit Transfer(arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 224 len arg3.length]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require uint8(stor5.field_0)
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(arg3, Array(len=arg4.length, data=arg4[all]), arg1, arg2);
    else:
        emit Transfer(arg3, arg1, arg2);
        mem[ceil32(arg4.length) + 128] = arg3
        mem[ceil32(arg4.length) + 160] = 64
        mem[ceil32(arg4.length) + 192] = arg4.length
        if 0 < arg4.length:
            mem[ceil32(arg4.length) + 224] = mem[128]
            mem[ceil32(arg4.length) + 256 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        emit Transfer(arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 224 len arg4.length]), arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor5.field_0)
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        emit Transfer(arg2, msg.sender, arg1);
        if 0 < arg2:
            mem[192] = 64
            mem[224 len floor32(arg2 - 1)] = arg2, 64, mem[224 len floor32(arg2 - 1) - 64]
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg2, msg.sender, arg1);
        mem[128] = 64
        mem[160] = arg2
        mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor5.field_0)
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if ext_code.size(arg2) <= 0:
        emit Transfer(arg3, arg1, arg2);
        if 0 < arg3:
            mem[192] = 64
            mem[224 len floor32(arg3 - 1)] = arg3, 64, mem[224 len floor32(arg3 - 1) - 64]
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg3, arg1, arg2);
        mem[128] = 64
        mem[160] = arg3
        mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
    emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), arg1, arg2);
    return 1
}



}
