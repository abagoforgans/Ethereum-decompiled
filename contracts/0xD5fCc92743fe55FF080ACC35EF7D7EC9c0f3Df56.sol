contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint8 stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    stor4 = 141625 * 10^17 * 3600
    stor5 = 16995000 * 10^18
    stor6 = 0
    stor7 = 22660000 * 10^18
    stor8 = 0
    stor9 = 22660000 * 10^18
    stor10 = 0
    require not msg.value
    stor3 = msg.sender
    stor0 = stor4
    stor1[address(msg.sender)] = stor4
    return code.data[418 len 3219]
}



// =====================  Runtime code  =====================


const name = 'Finom NOM Token'

const thirdStageMintingDate = (447408 * 24 * 3600)

const decimals = 18

const firstStageMintingDate = (438624 * 24 * 3600)

const totalTokens = 113300000 * 10^18

const symbol = 'NOM'

const secondStageMintingDate = (442992 * 24 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 initialIssue;
uint256 firstStageMinting;
uint8 stor6;
uint256 secondStageMinting;
uint8 stor8;
uint256 thirdStageMinting;
uint8 stor10;

function totalSupply() {
    return totalSupply
}

function firstStageMinting() {
    return firstStageMinting
}

function thirdStageMinted() {
    return bool(stor10)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function firstStageMinted() {
    return bool(stor6)
}

function initialIssue() {
    return initialIssue
}

function owner() {
    return owner
}

function secondStageMinted() {
    return bool(stor8)
}

function thirdStageMinting() {
    return thirdStageMinting
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function secondStageMinting() {
    return secondStageMinting
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint() {
    require owner == msg.sender
    require block.timestamp > 438624 * 24 * 3600
    if stor6:
        require block.timestamp > 442992 * 24 * 3600
        if stor8:
            require block.timestamp > 447408 * 24 * 3600
            require not stor10
            require thirdStageMinting >= 0
            stor10 = 1
            require thirdStageMinting > 0
            require thirdStageMinting + totalSupply >= totalSupply
            require thirdStageMinting + totalSupply <= 113300000 * 10^18
            require thirdStageMinting + totalSupply >= totalSupply
            totalSupply += thirdStageMinting
            require thirdStageMinting + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += thirdStageMinting
            emit Mint(thirdStageMinting, owner);
            emit Transfer(thirdStageMinting, 0, owner);
        else:
            require secondStageMinting >= 0
            stor8 = 1
            if block.timestamp <= 447408 * 24 * 3600:
                require secondStageMinting > 0
                require secondStageMinting + totalSupply >= totalSupply
                require secondStageMinting + totalSupply <= 113300000 * 10^18
                require secondStageMinting + totalSupply >= totalSupply
                totalSupply += secondStageMinting
                require secondStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                balanceOf[stor3] += secondStageMinting
                emit Mint(secondStageMinting, owner);
                emit Transfer(secondStageMinting, 0, owner);
            else:
                if stor10:
                    require secondStageMinting > 0
                    require secondStageMinting + totalSupply >= totalSupply
                    require secondStageMinting + totalSupply <= 113300000 * 10^18
                    require secondStageMinting + totalSupply >= totalSupply
                    totalSupply += secondStageMinting
                    require secondStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += secondStageMinting
                    emit Mint(secondStageMinting, owner);
                    emit Transfer(secondStageMinting, 0, owner);
                else:
                    require thirdStageMinting + secondStageMinting >= secondStageMinting
                    stor10 = 1
                    require thirdStageMinting + secondStageMinting > 0
                    require thirdStageMinting + secondStageMinting + totalSupply >= totalSupply
                    require thirdStageMinting + secondStageMinting + totalSupply <= 113300000 * 10^18
                    require thirdStageMinting + secondStageMinting + totalSupply >= totalSupply
                    totalSupply = thirdStageMinting + secondStageMinting + totalSupply
                    require thirdStageMinting + secondStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] = thirdStageMinting + secondStageMinting + balanceOf[stor3]
                    emit Mint((thirdStageMinting + secondStageMinting), owner);
                    emit Transfer((thirdStageMinting + secondStageMinting), 0, owner);
    else:
        require firstStageMinting >= 0
        stor6 = 1
        if block.timestamp <= 442992 * 24 * 3600:
            require firstStageMinting > 0
            require firstStageMinting + totalSupply >= totalSupply
            require firstStageMinting + totalSupply <= 113300000 * 10^18
            require firstStageMinting + totalSupply >= totalSupply
            totalSupply += firstStageMinting
            require firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += firstStageMinting
            emit Mint(firstStageMinting, owner);
            emit Transfer(firstStageMinting, 0, owner);
        else:
            if stor8:
                if block.timestamp <= 447408 * 24 * 3600:
                    require firstStageMinting > 0
                    require firstStageMinting + totalSupply >= totalSupply
                    require firstStageMinting + totalSupply <= 113300000 * 10^18
                    require firstStageMinting + totalSupply >= totalSupply
                    totalSupply += firstStageMinting
                    require firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += firstStageMinting
                    emit Mint(firstStageMinting, owner);
                    emit Transfer(firstStageMinting, 0, owner);
                else:
                    if stor10:
                        require firstStageMinting > 0
                        require firstStageMinting + totalSupply >= totalSupply
                        require firstStageMinting + totalSupply <= 113300000 * 10^18
                        require firstStageMinting + totalSupply >= totalSupply
                        totalSupply += firstStageMinting
                        require firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] += firstStageMinting
                        emit Mint(firstStageMinting, owner);
                        emit Transfer(firstStageMinting, 0, owner);
                    else:
                        require thirdStageMinting + firstStageMinting >= firstStageMinting
                        stor10 = 1
                        require thirdStageMinting + firstStageMinting > 0
                        require thirdStageMinting + firstStageMinting + totalSupply >= totalSupply
                        require thirdStageMinting + firstStageMinting + totalSupply <= 113300000 * 10^18
                        require thirdStageMinting + firstStageMinting + totalSupply >= totalSupply
                        totalSupply = thirdStageMinting + firstStageMinting + totalSupply
                        require thirdStageMinting + firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] = thirdStageMinting + firstStageMinting + balanceOf[stor3]
                        emit Mint((thirdStageMinting + firstStageMinting), owner);
                        emit Transfer((thirdStageMinting + firstStageMinting), 0, owner);
            else:
                require secondStageMinting + firstStageMinting >= firstStageMinting
                stor8 = 1
                if block.timestamp <= 447408 * 24 * 3600:
                    require secondStageMinting + firstStageMinting > 0
                    require secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                    require secondStageMinting + firstStageMinting + totalSupply <= 113300000 * 10^18
                    require secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                    totalSupply = secondStageMinting + firstStageMinting + totalSupply
                    require secondStageMinting + firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] = secondStageMinting + firstStageMinting + balanceOf[stor3]
                    emit Mint((secondStageMinting + firstStageMinting), owner);
                    emit Transfer((secondStageMinting + firstStageMinting), 0, owner);
                else:
                    if stor10:
                        require secondStageMinting + firstStageMinting > 0
                        require secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                        require secondStageMinting + firstStageMinting + totalSupply <= 113300000 * 10^18
                        require secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                        totalSupply = secondStageMinting + firstStageMinting + totalSupply
                        require secondStageMinting + firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] = secondStageMinting + firstStageMinting + balanceOf[stor3]
                        emit Mint((secondStageMinting + firstStageMinting), owner);
                        emit Transfer((secondStageMinting + firstStageMinting), 0, owner);
                    else:
                        require thirdStageMinting >= 0
                        stor10 = 1
                        require thirdStageMinting + secondStageMinting + firstStageMinting > 0
                        require thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                        require thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply <= 113300000 * 10^18
                        require thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                        totalSupply = thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply
                        require thirdStageMinting + secondStageMinting + firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                        balanceOf[stor3] = thirdStageMinting + secondStageMinting + firstStageMinting + balanceOf[stor3]
                        emit Mint((thirdStageMinting + secondStageMinting + firstStageMinting), owner);
                        emit Transfer((thirdStageMinting + secondStageMinting + firstStageMinting), 0, owner);
    return 1
}



}
