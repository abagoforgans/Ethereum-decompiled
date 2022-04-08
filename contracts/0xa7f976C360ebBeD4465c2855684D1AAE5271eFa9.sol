contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;
uint8 stor5; offset 160
uint256 storA4A6;

function _fallback() payable {
    stor3 = msg.sender
    stor5 = 1
    require not msg.value
    stor3 = code.data[3578 len 20]
    storA4A6 = 105 * 10^12
    stor2 = 105 * 10^12
    return code.data[292 len 3274]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 8

const mintedTokens = 0x60496049604960496049604960496049604960

const symbol = ''

const maxSupply = 21 * 10^14


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address potentialOwner;
uint8 stor5; offset 160
address mintAddress;
uint256 storA4A6;
mapping of uint256 stor33438009576142925888732326828917362405338191254962265495407912626775871204505;

function totalSupply() {
    return totalSupply
}

function mintAddress() {
    return mintAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function potentialOwner() {
    return potentialOwner
}

function owner() {
    return owner
}

function mintingAllowed() {
    return bool(stor5)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function finalize() {
    require mintAddress == msg.sender
    stor5 = 0
    return 1
}

function requestWithdrawal(address arg1, uint256 arg2) {
    require owner == msg.sender
    stor49ED[arg1] = arg2
}

function setOwner(address arg1) {
    require owner == msg.sender
    emit NewPotentialOwner(owner, arg1);
    potentialOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function confirmOwnership() {
    require potentialOwner == msg.sender
    emit NewOwner(owner, potentialOwner);
    owner = potentialOwner
    potentialOwner = 0
}

function setMintAddress(address arg1) {
    require owner == msg.sender
    if not mintAddress:
        mintAddress = arg1
        return 0
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit 0x60ddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x60ddf252: arg3, arg1, arg2
    return 1
}

function mint(address arg1, uint256 arg2, bool arg3) {
    require mintAddress == msg.sender
    require 1 == bool(stor5)
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= 21 * 10^14
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    if arg3:
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
    else:
        require arg2 + storA4A6 >= storA4A6
        storA4A6 += arg2
        if arg1:
            stor49ED[arg1] = arg2
    return 1
}

function withdrawTokens() {
    if balanceOf[0x60496049604960496049604960496049604960000000000000000000000000] >= allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)]:
        if allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)] >= allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)]:
            if balanceOf[address(msg.sender)] + allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)] > balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] += allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)]
                balanceOf[0x60496049604960496049604960496049604960] -= allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)]
                allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)] = 0
                emit 0x60ddf252: allowance[0x60496049604960496049604960496049604960000000000000000000000000][address(msg.sender)], 0x60496049604960496049604960496049604960, msg.sender
}



}
