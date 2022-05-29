contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 size;
uint256 rate;
uint256 lastMintTime;
uint256 leftOnLastMint;
address tokenAddress;

function owners(address arg1) {
    return bool(stor0[arg1])
}

function rate() {
    return rate
}

function isOwner(address arg1) {
    return bool(stor0[address(arg1)])
}

function leftOnLastMint() {
    return leftOnLastMint
}

function size() {
    return size
}

function lastMintTime() {
    return lastMintTime
}

function isMinter(address arg1) {
    return bool(stor1[address(arg1)])
}

function minters(address arg1) {
    return bool(stor1[arg1])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setSize(uint256 arg1) {
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    size = arg1
    return 1
}

function setRate(uint256 arg1) {
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    rate = arg1
    return 1
}

function deleteOwner(address arg1) {
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit DeleteOwner(arg1);
    return 0
}

function deleteMinter(address arg1) {
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit DeleteMinter(arg1);
    return 0
}

function addOwner(address arg1) {
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    require bool(stor0[address(arg1)]) != 1
    stor0[address(arg1)] = 1
    emit AddOwner(arg1);
    return 0
}

function addMinter(address arg1) {
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    require bool(stor1[address(arg1)]) != 1
    stor1[address(arg1)] = 1
    emit AddMinter(arg1);
    return 0
}

function setSizeAndRate(uint256 arg1, uint256 arg2) {
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    size = arg1
    if not stor0[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    rate = arg2
    return 1
}

function availableTokens() {
    require lastMintTime <= block.timestamp
    if not rate:
        require leftOnLastMint >= 0
        if size < leftOnLastMint:
            return size
        return leftOnLastMint
    require rate
    require (block.timestamp * rate) - (lastMintTime * rate) / rate == block.timestamp - lastMintTime
    require leftOnLastMint >= 0
    if size < (block.timestamp * rate) - (lastMintTime * rate) + leftOnLastMint:
        return size
    return ((block.timestamp * rate) - (lastMintTime * rate) + leftOnLastMint)
}

function mint(address arg1, uint256 arg2) {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Haven't enough right to access'
    require lastMintTime <= block.timestamp
    if not rate:
        require leftOnLastMint >= 0
        if size < leftOnLastMint:
            require arg2 <= size
            leftOnLastMint = size - arg2
        else:
            require arg2 <= leftOnLastMint
            leftOnLastMint -= arg2
    else:
        require rate
        require (block.timestamp * rate) - (lastMintTime * rate) / rate == block.timestamp - lastMintTime
        require leftOnLastMint >= 0
        if size < (block.timestamp * rate) - (lastMintTime * rate) + leftOnLastMint:
            require arg2 <= size
            leftOnLastMint = size - arg2
        else:
            require arg2 <= (block.timestamp * rate) - (lastMintTime * rate) + leftOnLastMint
            leftOnLastMint = (block.timestamp * rate) - (lastMintTime * rate) + leftOnLastMint - arg2
    lastMintTime = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}



}
