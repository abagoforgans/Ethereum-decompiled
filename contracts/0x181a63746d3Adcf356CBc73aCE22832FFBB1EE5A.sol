contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[0x5932cbb7cc02cf0d811a33daa8d818f0441b8457] = 10^13
    stor0[0x45d9927b6938b193b9e733f021decdae8b582ac4] = 7 * 10^11
    stor0[0x7195794b15747dd589747c6200194be6b56c1bf3] = 6 * 10^11
    stor0[0x59bdeaf328fbf3aed6f6c3c874a32d6a46a1accf] = 6 * 10^11
    stor0[0x85afd9d575db33f5c16e10c0ead2519f4215ed95] = 6 * 10^11
    stor0[0x2e429e4ddd2d494fa2708e6611429de589303510] = 5 * 10^11
    stor0[0x17074c2480882ad1ad53614ab3907789108d919e] = 5 * 10^11
    stor0[0x4c6e580b8366180d3d2ed6e338edbb50d10edf82] = 3 * 10^11
    stor0[0x839ab10ce6efbaa4f38d25c913af6c438cd2b1b9] = 3 * 10^11
    stor0[0x4c3c0053b9947d3005e31ead0042ab3a7c6e3ef3] = 3 * 10^11
    stor0[0xacf858ec7301024c37c2baacabf1cdd691af99e1] = 3 * 10^11
    stor0[0xb37fa525222180654dae96ca1ad15eceb3595cf7] = 3 * 10^11
    stor0[0x9ad487ba5be982d64097faf19583ad8deaa016e] = 85 * 10^11
    stor0[0xbfc59c104bd16e84d016efa4b34ea47ee216c982] = 85 * 10^11
    stor0[0x6e542ba667a8fed6e6d1e2cd741f7a8a156b07d3] = 85 * 10^11
    stor0[0x5e1a8ab18bc7d28da9e13491585df8b0160f99cc] = 85 * 10^11
    stor0[0x793064e86b4b274bdbef672e8eaaeb87517ffdec] = 85 * 10^11
    stor0[0x1fd7772fb2bf826fac26566efe2624aad664c8e9] = 85 * 10^11
    stor0[0x57f7d077ff04ca5a6e65948c938657d0ed57603a] = 85 * 10^11
    stor0[0xa5c54614198063ed9807bb4802d70108402ceda1] = 85 * 10^11
    stor0[0x7bbff0b5f17d1ec947070ae104eecd56396bb4d4] = 85 * 10^11
    stor0[0x690bb68fff6938da706a240320fba0933c5864b5] = 85 * 10^11
    return code.data[2065 len 3649]
}



// =====================  Runtime code  =====================


const name = 'Alaricoin'

const x = 'MzksMjkyMjAyLzE2LDI1OTE3Mw=='

const totalSupply = 10^14

const decimals = 8

const symbol = 'ALCO'

const image = Array(len=41, data='https://alaricoin.org/wp-content', '/alco.png', Mask(72, -256, 'https://alaricoin.org/wp-content', '/alco.png') << 256)


mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
