contract main {




// =====================  Runtime code  =====================


const name = 'TCS2'

const decimals = 5

const version = '1.0.0.0'

const symbol = 'TCS2'

const isMigrationAgent = 1


address owner;
address newOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor5;
mapping of uint8 stor6;
address sub_ee5554d3Address;
address sub_8d0e2909Address;
address redeemAddress;
array of uint256 description;

function totalSupply() payable {
    return totalSupply
}

function redeemAddress() payable {
    return redeemAddress
}

function paused() payable {
    return bool(stor5)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function description() payable {
    return description[0 len description.length]
}

function sub_8d0e2909(?) payable {
    return sub_8d0e2909Address
}

function owner() payable {
    return owner
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    return bool(stor6[address(arg1)])
}

function newOwner() payable {
    return newOwner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ee5554d3(?) payable {
    return sub_ee5554d3Address
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    if not stor5:
        revert with 0, 'only when paused'
    stor5 = 0
    emit Unpause()
}

function acceptOwnership() payable {
    if newOwner != msg.sender:
        revert with 0, 'Only New Owner'
    owner = newOwner
    newOwner = 0
    emit OwnershipTransferred(owner, newOwner);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    if stor5:
        revert with 0, 32, 20, 0xfe6f6e6c79207768656e206e6f74207061757365640000000000000000000000
    stor5 = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    newOwner = arg1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
        emit AddMinter(arg1);
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    if stor6[address(arg1)]:
        stor6[address(arg1)] = 0
        emit RemoveMinter(arg1);
}

function updateDescription(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not stor6[msg.sender]:
        revert with 0, 'Caller not minter'
    description[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5:
        revert with 0, 32, 20, 0xfe6f6e6c79207768656e206e6f74207061757365640000000000000000000000
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor6[msg.sender]:
        revert with 0, 'Caller not minter'
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function sub_000b6425(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    sub_ee5554d3Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xdf4bcf58 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not a migratable contract'
    emit 0xcec25bfd: this.address, arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor5:
        revert with 0, 32, 20, 0xfe6f6e6c79207768656e206e6f74207061757365640000000000000000000000
    if redeemAddress != arg1:
        revert with 0, 'Wrong destination address'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(arg2, arg1, 0);
    return 1
}

function sub_d66ef1b4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    sub_8d0e2909Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xdf4bcf58 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not a migratable contract'
    emit 0xafb3eb79: arg1, this.address
}

function migrateFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_8d0e2909Address != msg.sender:
        revert with 0, 'Only from migration contract'
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    emit 0xe502aa3e: arg2, arg1, sub_8d0e2909Address
    return 1
}

function sub_96b4f7a3(?) payable {
    require calldata.size - 4 >= 64
    if not stor6[msg.sender]:
        revert with 0, 'Caller not minter'
    if not arg1:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    if not arg2:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[address(arg1)] + balanceOf[arg2]
    emit Transfer(balanceOf[address(arg1)], arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor5:
        revert with 0, 32, 20, 0xfe6f6e6c79207768656e206e6f74207061757365640000000000000000000000
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'insufficient tokens'
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if redeemAddress != arg2:
        revert with 0, 'Wrong destination address'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= totalSupply
    totalSupply -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit Transfer(arg3, arg2, 0);
    return 1
}

function sub_8f803d33(?) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 32, 15, 0xef41646472657373206973204e756c6c00000000000000000000000000000000
    if not stor6[msg.sender]:
        revert with 0, 'Caller not minter'
    if this.address == arg1:
        revert with 0, 'Must not be self'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function migrate() payable {
    if stor5:
        revert with 0, 32, 20, 0xfe6f6e6c79207768656e206e6f74207061757365640000000000000000000000
    if not sub_ee5554d3Address:
        revert with 0, 'not in migration mode'
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0, 'no balance'
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    require ext_code.size(sub_ee5554d3Address)
    call sub_ee5554d3Address.0x7a3130e3 with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'migrateFrom must return true'
    emit 0x638edf84: balanceOf[address(msg.sender)], msg.sender, sub_ee5554d3Address
}



}
