contract main {




// =====================  Runtime code  =====================


const name = 'Lympo tokens'

const sub_247a12a3(?) = 385000000 * 10^18

const decimals = 18

const sub_7f89dd0f(?) = (430931 * 3600)

const symbol = 'LYM'

const sub_bd3eca6c(?) = (439691 * 3600)

const sub_c9507c9c(?) = 265000000 * 10^18

const sub_ef2697e8(?) = 73326000 * 10^18

const START_TIME = (422171 * 3600)

const TEAM_RESERVE = 100000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address ecosystemAddr;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
address advisersAddr;
address airdropAddress;
uint256 airdropBalance;

function sub_03436ed0(?) payable {
    return bool(uint8(stor5.field_176))
}

function totalSupply() payable {
    return totalSupply
}

function sub_5d3512a9(?) payable {
    return bool(uint8(stor5.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function airdropAddress() payable {
    return airdropAddress
}

function owner() payable {
    return owner
}

function sub_91641614(?) payable {
    return bool(uint8(stor5.field_168))
}

function ecosystemAddr() payable {
    return ecosystemAddr
}

function advisersAddr() payable {
    return advisersAddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function airdropBalance() payable {
    return airdropBalance
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function claimTeamReserve() payable {
    require msg.sender == owner
    require block.timestamp > 439691 * 3600
    require not uint8(stor5.field_160)
    uint8(stor5.field_160) = 1
    require owner
    require 100000000 * 10^18 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= 100000000 * 10^18
    require balanceOf[stor3] + 100000000 * 10^18 >= balanceOf[stor3]
    balanceOf[stor3] += 100000000 * 10^18
    emit Transfer(100000000 * 10^18, this.address, owner);
}

function sub_6521f28b(?) payable {
    require msg.sender == ecosystemAddr
    require not uint8(stor5.field_168)
    require block.timestamp > 430931 * 3600
    uint8(stor5.field_168) = 1
    require ecosystemAddr
    require 73326000 * 10^18 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= 73326000 * 10^18
    require balanceOf[stor4] + 73326000 * 10^18 >= balanceOf[stor4]
    balanceOf[stor4] += 73326000 * 10^18
    emit Transfer(73326000 * 10^18, this.address, ecosystemAddr);
}

function sub_d80233e5(?) payable {
    require msg.sender == ecosystemAddr
    require not uint8(stor5.field_176)
    require block.timestamp > 439691 * 3600
    uint8(stor5.field_176) = 1
    require ecosystemAddr
    require 73326000 * 10^18 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= 73326000 * 10^18
    require balanceOf[stor4] + 73326000 * 10^18 >= balanceOf[stor4]
    balanceOf[stor4] += 73326000 * 10^18
    emit Transfer(73326000 * 10^18, this.address, ecosystemAddr);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function recoverToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require block.timestamp > 440411 * 3600
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function airdrop(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == airdropAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_16));
        idx = idx + 1
        continue 
}



}
