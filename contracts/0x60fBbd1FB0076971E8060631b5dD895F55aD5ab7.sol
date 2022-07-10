contract main {




// =====================  Runtime code  =====================


const name = 'OWL Token'

const decimals = 18

const symbol = 'OWL'


address masterCopyAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor4;
uint256 stor5;
address creatorAddress;
address minterAddress;

function creator() payable {
    return creatorAddress
}

function getMasterCopy() payable {
    return masterCopyAddress
}

function minter() payable {
    return minterAddress
}

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function masterCopy() payable {
    return masterCopyAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getMasterCopyCountdown() payable {
    return stor4, stor5
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[msg.sender]:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit 0x64ddf252: arg2, msg.sender, arg1
    return 1
}

function burnOWL(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burnt(arg2, msg.sender, arg1);
    emit 0x64ddf252: arg2, arg1, 0
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if creatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4f6e6c79207468652063726561746f722063616e20706572666f726d20746865207472616e73616374696f,
                    mem[208 len 20]
    minterAddress = arg1
}

function setNewOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if creatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4f6e6c79207468652063726561746f722063616e20706572666f726d20746865207472616e73616374696f,
                    mem[208 len 20]
    creatorAddress = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg2)] += arg3
    emit 0x64ddf252: arg3, arg1, arg2
    return 1
}

function mintOWL(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not minterAddress:
        revert with 0, 'The minter must be initialized'
    if minterAddress != msg.sender:
        revert with 0, 'Only the minter can mint OWL'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Minted(arg2, arg1);
    emit 0x64ddf252: arg2, 0, arg1
}

function startMasterCopyCountdown(address arg1) payable {
    require calldata.size - 4 >= 32
    if creatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4f6e6c79207468652063726561746f722063616e20706572666f726d20746865207472616e73616374696f,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6e546865206d617374657220636f7079206d75737420626520612076616c696420616464726573,
                    mem[203 len 25]
    stor4 = arg1
    stor5 = block.timestamp + (720 * 24 * 3600)
}

function updateMasterCopy() payable {
    if creatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4f6e6c79207468652063726561746f722063616e20706572666f726d20746865207472616e73616374696f,
                    mem[208 len 20]
    if not stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6e546865206d617374657220636f7079206d75737420626520612076616c696420616464726573,
                    mem[203 len 25]
    if block.timestamp < stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x7349742773206e6f7420706f737369626c6520746f2075706461746520746865206d617374657220636f707920647572696e67207468652077616974696e6720706572696f,
                    mem[233 len 27]
    masterCopyAddress = stor4
}



}
