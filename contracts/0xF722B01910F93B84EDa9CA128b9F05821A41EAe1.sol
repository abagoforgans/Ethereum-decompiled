contract main {




// =====================  Runtime code  =====================


const sub_03cb0e7a(?) = 24100000 * 10^18

const name = 'Vrenelium Token'

const sub_1f92239b(?) = 3187295999

const decimals = 18

const symbol = 'VRE'

const sub_c060ec1d(?) = (438264 * 24 * 3600)

const TOTAL_TOKEN_CAP = 78000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 != this.address
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_0f53bea9(?) {
    if block.timestamp <= 438264 * 24 * 3600:
        return 24100000 * 10^18
    if block.timestamp <= 3187295999:
        if block.timestamp <= 1609459199:
            return 28132170 * 10^18
        if block.timestamp <= 1640995199:
            return 31541205 * 10^18
        if block.timestamp <= 1672531199:
            return 34500660 * 10^18
        if block.timestamp <= 1704067199:
            return 37115417 * 10^18
        if block.timestamp <= 1735603199:
            return 39457461 * 10^18
        if block.timestamp <= 1767225599:
            return 41583887 * 10^18
        if block.timestamp <= 1798761599:
            return 43521339 * 10^18
        if block.timestamp <= 1830297599:
            return 45304967 * 10^18
        if block.timestamp <= 1861919999:
            return (362359375 * 10^10 * 3600 * 24 * 3600)
        if block.timestamp <= 1893455999:
            return 48500727 * 10^18
        if block.timestamp <= 1924991999:
            return 49941032 * 10^18
        if block.timestamp <= 1956527999:
            return 51294580 * 10^18
        if block.timestamp <= 1988150399:
            return 52574631 * 10^18
        if block.timestamp <= 2019686399:
            return 53782475 * 10^18
        if block.timestamp <= 2051222399:
            return 54928714 * 10^18
        if block.timestamp <= 2082758399:
            return 56019326 * 10^18
        if block.timestamp <= 2114380799:
            return 57062248 * 10^18
        if block.timestamp <= 2145916799:
            return (161267375 * 10^14 * 3600)
        if block.timestamp <= 2177452799:
            return 59008160 * 10^18
        if block.timestamp <= 2208988799:
            return 59921387 * 10^18
        if block.timestamp <= 2240611199:
            return 60801313 * 10^18
        if block.timestamp <= 2272147199:
            return 61645817 * 10^18
        if block.timestamp <= 2303683199:
            return 62459738 * 10^18
        if block.timestamp <= 2335219199:
            return (17568115 * 10^15 * 3600)
        if block.timestamp <= 2366841599:
            return 64006212 * 10^18
        if block.timestamp <= 2398377599:
            return 64740308 * 10^18
        if block.timestamp <= 2429913599:
            return (18180885 * 10^15 * 24 * 3600)
        if block.timestamp <= 2461449599:
            return 66140270 * 10^18
        if block.timestamp <= 2493071999:
            return 66810661 * 10^18
        if block.timestamp <= 2524607999:
            return 67459883 * 10^18
        if block.timestamp <= 2556143999:
            return 68090879 * 10^18
        if block.timestamp <= 2587679999:
            return 68704644 * 10^18
        if block.timestamp <= 2619302399:
            return 69303710 * 10^18
        if block.timestamp <= 2650838399:
            return 69885650 * 10^18
        if block.timestamp <= 2682374399:
            return 70452903 * 10^18
        if block.timestamp <= 2713910399:
            return (197239425 * 10^14 * 24 * 3600)
        if block.timestamp <= 2745532799:
            return 71547652 * 10^18
        if block.timestamp <= 2777068799:
            return 72074946 * 10^18
        if block.timestamp <= 2808604799:
            return 72590155 * 10^18
        if block.timestamp <= 2840140799:
            return 73093818 * 10^18
        if block.timestamp <= 2871763199:
            return 73587778 * 10^18
        if block.timestamp <= 2903299199:
            return 74069809 * 10^18
        if block.timestamp <= 2934835199:
            return 74541721 * 10^18
        if block.timestamp <= 2966371199:
            return 75003928 * 10^18
        if block.timestamp <= 2997993599:
            return 75458050 * 10^18
        if block.timestamp <= 3029529599:
            return 75901975 * 10^18
        if block.timestamp <= 3061065599:
            return 76337302 * 10^18
        if block.timestamp <= 3092601599:
            return 76764358 * 10^18
        if block.timestamp <= 3124223999:
            return 77184590 * 10^18
        if block.timestamp <= 3155759999:
            return 77595992 * 10^18
        if block.timestamp > 3187295999:
            return 0
    return 78000000 * 10^18
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if block.timestamp <= 438264 * 24 * 3600:
        require totalSupply + arg2 <= 24100000 * 10^18
    else:
        if block.timestamp > 3187295999:
            require totalSupply + arg2 <= 78000000 * 10^18
        else:
            if block.timestamp <= 1609459199:
                require totalSupply + arg2 <= 28132170 * 10^18
            else:
                if block.timestamp <= 1640995199:
                    require totalSupply + arg2 <= 31541205 * 10^18
                else:
                    if block.timestamp <= 1672531199:
                        require totalSupply + arg2 <= 34500660 * 10^18
                    else:
                        if block.timestamp <= 1704067199:
                            require totalSupply + arg2 <= 37115417 * 10^18
                        else:
                            if block.timestamp <= 1735603199:
                                require totalSupply + arg2 <= 39457461 * 10^18
                            else:
                                if block.timestamp <= 1767225599:
                                    require totalSupply + arg2 <= 41583887 * 10^18
                                else:
                                    if block.timestamp <= 1798761599:
                                        require totalSupply + arg2 <= 43521339 * 10^18
                                    else:
                                        if block.timestamp <= 1830297599:
                                            require totalSupply + arg2 <= 45304967 * 10^18
                                        else:
                                            if block.timestamp <= 1861919999:
                                                require totalSupply + arg2 <= 362359375 * 10^10 * 3600 * 24 * 3600
                                            else:
                                                if block.timestamp <= 1893455999:
                                                    require totalSupply + arg2 <= 48500727 * 10^18
                                                else:
                                                    if block.timestamp <= 1924991999:
                                                        require totalSupply + arg2 <= 49941032 * 10^18
                                                    else:
                                                        if block.timestamp <= 1956527999:
                                                            require totalSupply + arg2 <= 51294580 * 10^18
                                                        else:
                                                            if block.timestamp <= 1988150399:
                                                                require totalSupply + arg2 <= 52574631 * 10^18
                                                            else:
                                                                if block.timestamp <= 2019686399:
                                                                    require totalSupply + arg2 <= 53782475 * 10^18
                                                                else:
                                                                    if block.timestamp <= 2051222399:
                                                                        require totalSupply + arg2 <= 54928714 * 10^18
                                                                    else:
                                                                        if block.timestamp <= 2082758399:
                                                                            require totalSupply + arg2 <= 56019326 * 10^18
                                                                        else:
                                                                            if block.timestamp <= 2114380799:
                                                                                require totalSupply + arg2 <= 57062248 * 10^18
                                                                            else:
                                                                                if block.timestamp <= 2145916799:
                                                                                    require totalSupply + arg2 <= 161267375 * 10^14 * 3600
                                                                                else:
                                                                                    if block.timestamp <= 2177452799:
                                                                                        require totalSupply + arg2 <= 59008160 * 10^18
                                                                                    else:
                                                                                        if block.timestamp <= 2208988799:
                                                                                            require totalSupply + arg2 <= 59921387 * 10^18
                                                                                        else:
                                                                                            if block.timestamp <= 2240611199:
                                                                                                require totalSupply + arg2 <= 60801313 * 10^18
                                                                                            else:
                                                                                                if block.timestamp <= 2272147199:
                                                                                                    require totalSupply + arg2 <= 61645817 * 10^18
                                                                                                else:
                                                                                                    if block.timestamp <= 2303683199:
                                                                                                        require totalSupply + arg2 <= 62459738 * 10^18
                                                                                                    else:
                                                                                                        if block.timestamp <= 2335219199:
                                                                                                            require totalSupply + arg2 <= 17568115 * 10^15 * 3600
                                                                                                        else:
                                                                                                            if block.timestamp <= 2366841599:
                                                                                                                require totalSupply + arg2 <= 64006212 * 10^18
                                                                                                            else:
                                                                                                                if block.timestamp <= 2398377599:
                                                                                                                    require totalSupply + arg2 <= 64740308 * 10^18
                                                                                                                else:
                                                                                                                    if block.timestamp <= 2429913599:
                                                                                                                        require totalSupply + arg2 <= 18180885 * 10^15 * 24 * 3600
                                                                                                                    else:
                                                                                                                        if block.timestamp <= 2461449599:
                                                                                                                            require totalSupply + arg2 <= 66140270 * 10^18
                                                                                                                        else:
                                                                                                                            if block.timestamp <= 2493071999:
                                                                                                                                require totalSupply + arg2 <= 66810661 * 10^18
                                                                                                                            else:
                                                                                                                                if block.timestamp <= 2524607999:
                                                                                                                                    require totalSupply + arg2 <= 67459883 * 10^18
                                                                                                                                else:
                                                                                                                                    if block.timestamp <= 2556143999:
                                                                                                                                        require totalSupply + arg2 <= 68090879 * 10^18
                                                                                                                                    else:
                                                                                                                                        if block.timestamp <= 2587679999:
                                                                                                                                            require totalSupply + arg2 <= 68704644 * 10^18
                                                                                                                                        else:
                                                                                                                                            if block.timestamp <= 2619302399:
                                                                                                                                                require totalSupply + arg2 <= 69303710 * 10^18
                                                                                                                                            else:
                                                                                                                                                if block.timestamp <= 2650838399:
                                                                                                                                                    require totalSupply + arg2 <= 69885650 * 10^18
                                                                                                                                                else:
                                                                                                                                                    if block.timestamp <= 2682374399:
                                                                                                                                                        require totalSupply + arg2 <= 70452903 * 10^18
                                                                                                                                                    else:
                                                                                                                                                        if block.timestamp <= 2713910399:
                                                                                                                                                            require totalSupply + arg2 <= 197239425 * 10^14 * 24 * 3600
                                                                                                                                                        else:
                                                                                                                                                            if block.timestamp <= 2745532799:
                                                                                                                                                                require totalSupply + arg2 <= 71547652 * 10^18
                                                                                                                                                            else:
                                                                                                                                                                if block.timestamp <= 2777068799:
                                                                                                                                                                    require totalSupply + arg2 <= 72074946 * 10^18
                                                                                                                                                                else:
                                                                                                                                                                    if block.timestamp <= 2808604799:
                                                                                                                                                                        require totalSupply + arg2 <= 72590155 * 10^18
                                                                                                                                                                    else:
                                                                                                                                                                        if block.timestamp <= 2840140799:
                                                                                                                                                                            require totalSupply + arg2 <= 73093818 * 10^18
                                                                                                                                                                        else:
                                                                                                                                                                            if block.timestamp <= 2871763199:
                                                                                                                                                                                require totalSupply + arg2 <= 73587778 * 10^18
                                                                                                                                                                            else:
                                                                                                                                                                                if block.timestamp <= 2903299199:
                                                                                                                                                                                    require totalSupply + arg2 <= 74069809 * 10^18
                                                                                                                                                                                else:
                                                                                                                                                                                    if block.timestamp <= 2934835199:
                                                                                                                                                                                        require totalSupply + arg2 <= 74541721 * 10^18
                                                                                                                                                                                    else:
                                                                                                                                                                                        if block.timestamp <= 2966371199:
                                                                                                                                                                                            require totalSupply + arg2 <= 75003928 * 10^18
                                                                                                                                                                                        else:
                                                                                                                                                                                            if block.timestamp <= 2997993599:
                                                                                                                                                                                                require totalSupply + arg2 <= 75458050 * 10^18
                                                                                                                                                                                            else:
                                                                                                                                                                                                if block.timestamp <= 3029529599:
                                                                                                                                                                                                    require totalSupply + arg2 <= 75901975 * 10^18
                                                                                                                                                                                                else:
                                                                                                                                                                                                    if block.timestamp <= 3061065599:
                                                                                                                                                                                                        require totalSupply + arg2 <= 76337302 * 10^18
                                                                                                                                                                                                    else:
                                                                                                                                                                                                        if block.timestamp <= 3092601599:
                                                                                                                                                                                                            require totalSupply + arg2 <= 76764358 * 10^18
                                                                                                                                                                                                        else:
                                                                                                                                                                                                            if block.timestamp <= 3124223999:
                                                                                                                                                                                                                require totalSupply + arg2 <= 77184590 * 10^18
                                                                                                                                                                                                            else:
                                                                                                                                                                                                                if block.timestamp <= 3155759999:
                                                                                                                                                                                                                    require totalSupply + arg2 <= 77595992 * 10^18
                                                                                                                                                                                                                else:
                                                                                                                                                                                                                    if block.timestamp > 3187295999:
                                                                                                                                                                                                                        require totalSupply + arg2 <= 0
                                                                                                                                                                                                                    else:
                                                                                                                                                                                                                        require totalSupply + arg2 <= 78000000 * 10^18
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
