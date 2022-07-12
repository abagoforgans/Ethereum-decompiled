contract main {




// =====================  Runtime code  =====================


const name = 'TESSST'

const decimals = 18

const symbol = 'TESSST'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
uint256 maxSupply;
uint256 tokensMinted;
mapping of struct sub_bc9990f5;

function totalSupply() {
    return totalSupply
}

function tokensMinted() {
    return tokensMinted
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function sub_bc9990f5(?) {
    require calldata.size - 4 >= 32
    return sub_bc9990f5[address(arg1)].field_0
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceMinter() {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor3[address(msg.sender)]
    require tokensMinted + arg2 >= tokensMinted
    require tokensMinted + arg2 <= maxSupply
    require tokensMinted + arg2 >= tokensMinted
    tokensMinted += arg2
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function freezeOf(address arg1) {
    require calldata.size - 4 >= 32
    if sub_bc9990f5[address(arg1)].field_0 > block.timestamp:
        return sub_bc9990f5[address(arg1)].field_256
    if not sub_bc9990f5[address(arg1)].field_512:
        return 0
    require sub_bc9990f5[address(arg1)].field_0 <= block.timestamp
    if block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 >= 10:
        return 0
    if not sub_bc9990f5[address(arg1)].field_256:
        return 0
    require sub_bc9990f5[address(arg1)].field_256
    require (10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / sub_bc9990f5[address(arg1)].field_256 == -(block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600) + 10
    return ((10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / 10)
}

function sub_cf8e359b(?) {
    require calldata.size - 4 >= 128
    require msg.sender
    require stor3[address(msg.sender)]
    require block.timestamp < arg3
    require sub_bc9990f5[address(arg1)].field_256 + arg2 >= sub_bc9990f5[address(arg1)].field_256
    if sub_bc9990f5[address(arg1)].field_0:
        sub_bc9990f5[address(arg1)].field_256 += arg2
        sub_bc9990f5[address(arg1)].field_512 = uint8(bool(sub_bc9990f5[address(arg1)].field_512))
    else:
        sub_bc9990f5[address(arg1)].field_0 = arg3
        sub_bc9990f5[address(arg1)].field_256 += arg2
        sub_bc9990f5[address(arg1)].field_512 = uint8(arg4)
    require msg.sender
    require stor3[address(msg.sender)]
    require tokensMinted + arg2 >= tokensMinted
    require tokensMinted + arg2 <= maxSupply
    require tokensMinted + arg2 >= tokensMinted
    tokensMinted += arg2
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function getAvailableBalance(address arg1) {
    require calldata.size - 4 >= 32
    if sub_bc9990f5[address(arg1)].field_0 > block.timestamp:
        require sub_bc9990f5[address(arg1)].field_256 <= balanceOf[address(arg1)]
        return (balanceOf[address(arg1)] - sub_bc9990f5[address(arg1)].field_256)
    if not sub_bc9990f5[address(arg1)].field_512:
        require 0 <= balanceOf[address(arg1)]
        return balanceOf[address(arg1)]
    require sub_bc9990f5[address(arg1)].field_0 <= block.timestamp
    if block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 >= 10:
        require 0 <= balanceOf[address(arg1)]
        return balanceOf[address(arg1)]
    if not sub_bc9990f5[address(arg1)].field_256:
        require 0 <= balanceOf[address(arg1)]
        return balanceOf[address(arg1)]
    require sub_bc9990f5[address(arg1)].field_256
    require (10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / sub_bc9990f5[address(arg1)].field_256 == -(block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600) + 10
    require (10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / 10 <= balanceOf[address(arg1)]
    return (balanceOf[address(arg1)] - ((10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / 10))
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_bc9990f5[address(msg.sender)].field_0 > block.timestamp:
        require sub_bc9990f5[address(msg.sender)].field_256 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - sub_bc9990f5[address(msg.sender)].field_256 >= arg1
    else:
        if not sub_bc9990f5[address(msg.sender)].field_512:
            require 0 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= arg1
        else:
            require sub_bc9990f5[address(msg.sender)].field_0 <= block.timestamp
            if block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 >= 10:
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= arg1
            else:
                if not sub_bc9990f5[address(msg.sender)].field_256:
                    require 0 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= arg1
                else:
                    require sub_bc9990f5[address(msg.sender)].field_256
                    require (10 * sub_bc9990f5[address(msg.sender)].field_256) - (block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(msg.sender)].field_256) / sub_bc9990f5[address(msg.sender)].field_256 == -(block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600) + 10
                    require (10 * sub_bc9990f5[address(msg.sender)].field_256) - (block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(msg.sender)].field_256) / 10 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - ((10 * sub_bc9990f5[address(msg.sender)].field_256) - (block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(msg.sender)].field_256) / 10) >= arg1
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_bc9990f5[address(arg1)].field_0 > block.timestamp:
        require sub_bc9990f5[address(arg1)].field_256 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - sub_bc9990f5[address(arg1)].field_256 >= arg2
    else:
        if not sub_bc9990f5[address(arg1)].field_512:
            require 0 <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] >= arg2
        else:
            require sub_bc9990f5[address(arg1)].field_0 <= block.timestamp
            if block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 >= 10:
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= arg2
            else:
                if not sub_bc9990f5[address(arg1)].field_256:
                    require 0 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] >= arg2
                else:
                    require sub_bc9990f5[address(arg1)].field_256
                    require (10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / sub_bc9990f5[address(arg1)].field_256 == -(block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600) + 10
                    require (10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / 10 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - ((10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / 10) >= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_bc9990f5[address(msg.sender)].field_0 > block.timestamp:
        require sub_bc9990f5[address(msg.sender)].field_256 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - sub_bc9990f5[address(msg.sender)].field_256 >= arg2
    else:
        if not sub_bc9990f5[address(msg.sender)].field_512:
            require 0 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] >= arg2
        else:
            require sub_bc9990f5[address(msg.sender)].field_0 <= block.timestamp
            if block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 >= 10:
                require 0 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= arg2
            else:
                if not sub_bc9990f5[address(msg.sender)].field_256:
                    require 0 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= arg2
                else:
                    require sub_bc9990f5[address(msg.sender)].field_256
                    require (10 * sub_bc9990f5[address(msg.sender)].field_256) - (block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(msg.sender)].field_256) / sub_bc9990f5[address(msg.sender)].field_256 == -(block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600) + 10
                    require (10 * sub_bc9990f5[address(msg.sender)].field_256) - (block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(msg.sender)].field_256) / 10 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - ((10 * sub_bc9990f5[address(msg.sender)].field_256) - (block.timestamp - sub_bc9990f5[address(msg.sender)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(msg.sender)].field_256) / 10) >= arg2
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if sub_bc9990f5[address(arg1)].field_0 > block.timestamp:
        require sub_bc9990f5[address(arg1)].field_256 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - sub_bc9990f5[address(arg1)].field_256 >= arg3
    else:
        if not sub_bc9990f5[address(arg1)].field_512:
            require 0 <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] >= arg3
        else:
            require sub_bc9990f5[address(arg1)].field_0 <= block.timestamp
            if block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 >= 10:
                require 0 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] >= arg3
            else:
                if not sub_bc9990f5[address(arg1)].field_256:
                    require 0 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] >= arg3
                else:
                    require sub_bc9990f5[address(arg1)].field_256
                    require (10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / sub_bc9990f5[address(arg1)].field_256 == -(block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600) + 10
                    require (10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / 10 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - ((10 * sub_bc9990f5[address(arg1)].field_256) - (block.timestamp - sub_bc9990f5[address(arg1)].field_0 / 720 * 24 * 3600 * sub_bc9990f5[address(arg1)].field_256) / 10) >= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
