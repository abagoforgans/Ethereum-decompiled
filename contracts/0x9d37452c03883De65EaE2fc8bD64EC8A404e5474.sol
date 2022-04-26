contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    stor4 = 141625 * 10^17 * 3600
    stor5 = 0
    stor6 = 16995000 * 10^18
    stor7 = 0
    stor8 = 22660000 * 10^18
    stor9 = 0
    stor10 = 22660000 * 10^18
    stor11 = 0
    require not msg.value
    stor3 = msg.sender
    return code.data[396 len 3359]
}



// =====================  Runtime code  =====================


const name = 'Finom NOM Token'

const thirdStageMintingDate = (447408 * 24 * 3600)

const decimals = 18

const firstStageMintingDate = (438624 * 24 * 3600)

const initialIssueMintingDate = (420768 * 24 * 3600)

const totalTokens = 113300000 * 10^18

const symbol = 'NOM'

const secondStageMintingDate = (442992 * 24 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 initialIssueMinting;
uint8 stor5;
uint256 firstStageMinting;
uint8 stor7;
uint256 secondStageMinting;
uint8 stor9;
uint256 thirdStageMinting;
uint8 stor11;

function totalSupply() {
    return totalSupply
}

function firstStageMinting() {
    return firstStageMinting
}

function thirdStageMinted() {
    return bool(stor11)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function firstStageMinted() {
    return bool(stor7)
}

function owner() {
    return owner
}

function initialIssueMinted() {
    return bool(stor5)
}

function secondStageMinted() {
    return bool(stor9)
}

function initialIssueMinting() {
    return initialIssueMinting
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
    require block.timestamp > 420768 * 24 * 3600
    if stor5:
        require block.timestamp > 438624 * 24 * 3600
        if stor7:
            require block.timestamp > 442992 * 24 * 3600
            if stor9:
                require block.timestamp > 447408 * 24 * 3600
                require not stor11
                require thirdStageMinting >= 0
                stor11 = 1
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
                stor9 = 1
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
                    if stor11:
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
                        stor11 = 1
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
            stor7 = 1
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
                if stor9:
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
                        if stor11:
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
                            stor11 = 1
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
                    stor9 = 1
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
                        if stor11:
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
                            stor11 = 1
                            require thirdStageMinting + secondStageMinting + firstStageMinting > 0
                            require thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                            require thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply <= 113300000 * 10^18
                            require thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply >= totalSupply
                            totalSupply = thirdStageMinting + secondStageMinting + firstStageMinting + totalSupply
                            require thirdStageMinting + secondStageMinting + firstStageMinting + balanceOf[stor3] >= balanceOf[stor3]
                            balanceOf[stor3] = thirdStageMinting + secondStageMinting + firstStageMinting + balanceOf[stor3]
                            emit Mint((thirdStageMinting + secondStageMinting + firstStageMinting), owner);
                            emit Transfer((thirdStageMinting + secondStageMinting + firstStageMinting), 0, owner);
    else:
        require initialIssueMinting >= 0
        stor5 = 1
        if block.timestamp <= 438624 * 24 * 3600:
            require initialIssueMinting > 0
            require initialIssueMinting + totalSupply >= totalSupply
            require initialIssueMinting + totalSupply <= 113300000 * 10^18
            require initialIssueMinting + totalSupply >= totalSupply
            totalSupply += initialIssueMinting
            require initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += initialIssueMinting
            emit Mint(initialIssueMinting, owner);
            emit Transfer(initialIssueMinting, 0, owner);
        else:
            if stor7:
                if block.timestamp <= 442992 * 24 * 3600:
                    require initialIssueMinting > 0
                    require initialIssueMinting + totalSupply >= totalSupply
                    require initialIssueMinting + totalSupply <= 113300000 * 10^18
                    require initialIssueMinting + totalSupply >= totalSupply
                    totalSupply += initialIssueMinting
                    require initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += initialIssueMinting
                    emit Mint(initialIssueMinting, owner);
                    emit Transfer(initialIssueMinting, 0, owner);
                else:
                    if stor9:
                        if block.timestamp <= 447408 * 24 * 3600:
                            require initialIssueMinting > 0
                            require initialIssueMinting + totalSupply >= totalSupply
                            require initialIssueMinting + totalSupply <= 113300000 * 10^18
                            require initialIssueMinting + totalSupply >= totalSupply
                            totalSupply += initialIssueMinting
                            require initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                            balanceOf[stor3] += initialIssueMinting
                            emit Mint(initialIssueMinting, owner);
                            emit Transfer(initialIssueMinting, 0, owner);
                        else:
                            if stor11:
                                require initialIssueMinting > 0
                                require initialIssueMinting + totalSupply >= totalSupply
                                require initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require initialIssueMinting + totalSupply >= totalSupply
                                totalSupply += initialIssueMinting
                                require initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] += initialIssueMinting
                                emit Mint(initialIssueMinting, owner);
                                emit Transfer(initialIssueMinting, 0, owner);
                            else:
                                require thirdStageMinting + initialIssueMinting >= initialIssueMinting
                                stor11 = 1
                                require thirdStageMinting + initialIssueMinting > 0
                                require thirdStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                require thirdStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require thirdStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                totalSupply = thirdStageMinting + initialIssueMinting + totalSupply
                                require thirdStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] = thirdStageMinting + initialIssueMinting + balanceOf[stor3]
                                emit Mint((thirdStageMinting + initialIssueMinting), owner);
                                emit Transfer((thirdStageMinting + initialIssueMinting), 0, owner);
                    else:
                        require secondStageMinting + initialIssueMinting >= initialIssueMinting
                        stor9 = 1
                        if block.timestamp <= 447408 * 24 * 3600:
                            require secondStageMinting + initialIssueMinting > 0
                            require secondStageMinting + initialIssueMinting + totalSupply >= totalSupply
                            require secondStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                            require secondStageMinting + initialIssueMinting + totalSupply >= totalSupply
                            totalSupply = secondStageMinting + initialIssueMinting + totalSupply
                            require secondStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                            balanceOf[stor3] = secondStageMinting + initialIssueMinting + balanceOf[stor3]
                            emit Mint((secondStageMinting + initialIssueMinting), owner);
                            emit Transfer((secondStageMinting + initialIssueMinting), 0, owner);
                        else:
                            if stor11:
                                require secondStageMinting + initialIssueMinting > 0
                                require secondStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                require secondStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require secondStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                totalSupply = secondStageMinting + initialIssueMinting + totalSupply
                                require secondStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] = secondStageMinting + initialIssueMinting + balanceOf[stor3]
                                emit Mint((secondStageMinting + initialIssueMinting), owner);
                                emit Transfer((secondStageMinting + initialIssueMinting), 0, owner);
                            else:
                                require thirdStageMinting >= 0
                                stor11 = 1
                                require thirdStageMinting + secondStageMinting + initialIssueMinting > 0
                                require thirdStageMinting + secondStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                require thirdStageMinting + secondStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require thirdStageMinting + secondStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                totalSupply = thirdStageMinting + secondStageMinting + initialIssueMinting + totalSupply
                                require thirdStageMinting + secondStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] = thirdStageMinting + secondStageMinting + initialIssueMinting + balanceOf[stor3]
                                emit Mint((thirdStageMinting + secondStageMinting + initialIssueMinting), owner);
                                emit Transfer((thirdStageMinting + secondStageMinting + initialIssueMinting), 0, owner);
            else:
                require firstStageMinting + initialIssueMinting >= initialIssueMinting
                stor7 = 1
                if block.timestamp <= 442992 * 24 * 3600:
                    require firstStageMinting + initialIssueMinting > 0
                    require firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                    require firstStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                    require firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                    totalSupply = firstStageMinting + initialIssueMinting + totalSupply
                    require firstStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] = firstStageMinting + initialIssueMinting + balanceOf[stor3]
                    emit Mint((firstStageMinting + initialIssueMinting), owner);
                    emit Transfer((firstStageMinting + initialIssueMinting), 0, owner);
                else:
                    if stor9:
                        if block.timestamp <= 447408 * 24 * 3600:
                            require firstStageMinting + initialIssueMinting > 0
                            require firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                            require firstStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                            require firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                            totalSupply = firstStageMinting + initialIssueMinting + totalSupply
                            require firstStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                            balanceOf[stor3] = firstStageMinting + initialIssueMinting + balanceOf[stor3]
                            emit Mint((firstStageMinting + initialIssueMinting), owner);
                            emit Transfer((firstStageMinting + initialIssueMinting), 0, owner);
                        else:
                            if stor11:
                                require firstStageMinting + initialIssueMinting > 0
                                require firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                require firstStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                totalSupply = firstStageMinting + initialIssueMinting + totalSupply
                                require firstStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] = firstStageMinting + initialIssueMinting + balanceOf[stor3]
                                emit Mint((firstStageMinting + initialIssueMinting), owner);
                                emit Transfer((firstStageMinting + initialIssueMinting), 0, owner);
                            else:
                                require thirdStageMinting >= 0
                                stor11 = 1
                                require thirdStageMinting + firstStageMinting + initialIssueMinting > 0
                                require thirdStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                require thirdStageMinting + firstStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require thirdStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                totalSupply = thirdStageMinting + firstStageMinting + initialIssueMinting + totalSupply
                                require thirdStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] = thirdStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3]
                                emit Mint((thirdStageMinting + firstStageMinting + initialIssueMinting), owner);
                                emit Transfer((thirdStageMinting + firstStageMinting + initialIssueMinting), 0, owner);
                    else:
                        require secondStageMinting >= 0
                        stor9 = 1
                        if block.timestamp <= 447408 * 24 * 3600:
                            require secondStageMinting + firstStageMinting + initialIssueMinting > 0
                            require secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                            require secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                            require secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                            totalSupply = secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply
                            require secondStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                            balanceOf[stor3] = secondStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3]
                            emit Mint((secondStageMinting + firstStageMinting + initialIssueMinting), owner);
                            emit Transfer((secondStageMinting + firstStageMinting + initialIssueMinting), 0, owner);
                        else:
                            if stor11:
                                require secondStageMinting + firstStageMinting + initialIssueMinting > 0
                                require secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                require secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                totalSupply = secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply
                                require secondStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] = secondStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3]
                                emit Mint((secondStageMinting + firstStageMinting + initialIssueMinting), owner);
                                emit Transfer((secondStageMinting + firstStageMinting + initialIssueMinting), 0, owner);
                            else:
                                require thirdStageMinting >= 0
                                stor11 = 1
                                require thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting > 0
                                require thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                require thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply <= 113300000 * 10^18
                                require thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply >= totalSupply
                                totalSupply = thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting + totalSupply
                                require thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3] >= balanceOf[stor3]
                                balanceOf[stor3] = thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting + balanceOf[stor3]
                                emit Mint((thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting), owner);
                                emit Transfer((thirdStageMinting + secondStageMinting + firstStageMinting + initialIssueMinting), 0, owner);
    return 1
}



}
