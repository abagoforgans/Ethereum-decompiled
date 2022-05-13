contract main {




// =====================  Runtime code  =====================


const name = 'XX Token'

const team4Address = 0x5eb7b659e66cc11210e0407186ebb51ecf4d59

const team3Address = 0x52f120c691e35d8b6845af8e963322a7895551

const privateSell1LockEndTime = (424035 * 3600)

const decimals = 18

const team1LockEndTime = (424041 * 3600)

const initialToken = 500000000 * 10^18

const team1Address = 0xdc41ccc0f0844e37838badac5dc97bc2cf206f

const rescueAddress = 0xd952948a1d10a08bc419146620ed0f147ecef3

const team4LockEndTime = (424065 * 3600)

const privateSell2LockEndTime = (424038 * 3600)

const maxDestroyThreshold = 250000000 * 10^18

const publicSellLockEndTime = (424014 * 3600)

const privateSell1Token = 62500000 * 10^18

const team4Token = 50000000 * 10^18

const team3Token = 50000000 * 10^18

const team2LockEndTime = (424059 * 3600)

const symbol = 'XX'

const team2Address = 0xca7106cc04dba804d59f6fb9acef58d16d18c3

const privateSell2Address = 0xe2b13871235796f0a5d2fd0fafe013f15f13f6

const team3LockEndTime = (424062 * 3600)

const privateSell1Address = 0xf32621bc1f641afec54f82fc5416f090c8f936

const maxBurnThreshold = 31250000 * 10^18

const publicSellToken = 175000000 * 10^18

const team2Token = 50000000 * 10^18

const team1Token = 50000000 * 10^18

const privateSell2Token = 62500000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalToken;
address owner;
mapping of uint8 stor4;
uint256 destroyedToken;

function totalSupply() {
    return totalToken
}

function destroyedToken() {
    return destroyedToken
}

function totalToken() {
    return totalToken
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xd952948a1d10a08bc419146620ed0f147ecef3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    require 31250000 * 10^18 >= arg1
    require destroyedToken + arg1 >= destroyedToken
    require 250000000 * 10^18 >= destroyedToken + arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalToken
    totalToken -= arg1
    require destroyedToken + arg1 >= destroyedToken
    destroyedToken += arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1, msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function unlock() {
    require msg.sender == owner
    if not stor4[0xf32621bc1f641afec54f82fc5416f090c8f936]:
        if not stor4[0xe2b13871235796f0a5d2fd0fafe013f15f13f6]:
            if not stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f]:
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
            else:
                if block.timestamp >= 424041 * 3600:
                    stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f] = 0
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
        else:
            if block.timestamp >= 424038 * 3600:
                stor4[0xe2b13871235796f0a5d2fd0fafe013f15f13f6] = 0
            if not stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f]:
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
            else:
                if block.timestamp >= 424041 * 3600:
                    stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f] = 0
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
    else:
        if block.timestamp >= 424035 * 3600:
            stor4[0xf32621bc1f641afec54f82fc5416f090c8f936] = 0
        if not stor4[0xe2b13871235796f0a5d2fd0fafe013f15f13f6]:
            if not stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f]:
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
            else:
                if block.timestamp >= 424041 * 3600:
                    stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f] = 0
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
        else:
            if block.timestamp >= 424038 * 3600:
                stor4[0xe2b13871235796f0a5d2fd0fafe013f15f13f6] = 0
            if not stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f]:
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
            else:
                if block.timestamp >= 424041 * 3600:
                    stor4[0xdc41ccc0f0844e37838badac5dc97bc2cf206f] = 0
                if not stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3]:
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                else:
                    if block.timestamp >= 424059 * 3600:
                        stor4[0xca7106cc04dba804d59f6fb9acef58d16d18c3] = 0
                    if not stor4[0x52f120c691e35d8b6845af8e963322a7895551]:
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
                    else:
                        if block.timestamp >= 424062 * 3600:
                            stor4[0x52f120c691e35d8b6845af8e963322a7895551] = 0
                        if stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59]:
                            if block.timestamp >= 424065 * 3600:
                                stor4[0x5eb7b659e66cc11210e0407186ebb51ecf4d59] = 0
}



}
