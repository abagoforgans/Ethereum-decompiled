contract main {




// =====================  Runtime code  =====================


address owner;
uint256 ETHUSD;
uint256 sub_fc2650d8;
uint256 exchangeRate;
uint8 stor4;
mapping of uint256 sub_8ffa56b1;

function exchangeRate() {
    return exchangeRate
}

function called() {
    return bool(stor4)
}

function ETHUSD() {
    return ETHUSD
}

function owner() {
    return owner
}

function sub_8ffa56b1(?) {
    return sub_8ffa56b1[arg1]
}

function sub_fc2650d8(?) {
    return sub_fc2650d8
}

function _fallback() payable {
    revert
}

function sub_98bc7c87(?) {
    require msg.sender == owner
    sub_8ffa56b1[arg1] = arg2
}

function getLatest(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    ETHUSD = arg2
    sub_fc2650d8 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalDiscount(uint256 arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    emit logval(arg1);
    mem[ceil32(arg3.length) + 128] = 'ethereum'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) == sha3('ethereum'):
        require ETHUSD
        emit logval((ETHUSD * arg2 / 10^18));
        if not ETHUSD * arg2 / 10^18:
            if arg1 == 5:
                if sub_8ffa56b1[arg1]:
                    return 10 * 10^6 * ETHUSD * arg2 / 10^18 / sub_8ffa56b1[arg1] / 10000, ETHUSD * arg2 / 10^18
            else:
                if not ETHUSD * arg2 / 10^18:
                    return 0, ETHUSD * arg2 / 10^18
                if ETHUSD * arg2 / 10^18:
                    if ETHUSD * arg2 / 10^18 * sub_8ffa56b1[arg1] / ETHUSD * arg2 / 10^18 == sub_8ffa56b1[arg1]:
                        return ETHUSD * arg2 / 10^18 * sub_8ffa56b1[arg1], ETHUSD * arg2 / 10^18
        else:
            if ETHUSD * arg2 / 10^18:
                if ETHUSD * arg2 / 10^18 * sub_8ffa56b1[arg1] / ETHUSD * arg2 / 10^18 == sub_8ffa56b1[arg1]:
                    if arg1 == 5:
                        if sub_8ffa56b1[arg1]:
                            return 10 * 10^6 * ETHUSD * arg2 / 10^18 / sub_8ffa56b1[arg1] / 10000, ETHUSD * arg2 / 10^18
                    else:
                        if not ETHUSD * arg2 / 10^18:
                            return 0, ETHUSD * arg2 / 10^18
                        if ETHUSD * arg2 / 10^18:
                            if ETHUSD * arg2 / 10^18 * sub_8ffa56b1[arg1] / ETHUSD * arg2 / 10^18 == sub_8ffa56b1[arg1]:
                                return ETHUSD * arg2 / 10^18 * sub_8ffa56b1[arg1], ETHUSD * arg2 / 10^18
    else:
        mem[ceil32(arg3.length) + 128] = 'bitcoin'
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        if sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]) != sha3('bitcoin'):
            if arg1 != 5:
                return 0
            if sub_8ffa56b1[arg1]:
                return 0 / sub_8ffa56b1[arg1] / 10000, 0
        else:
            require sub_fc2650d8
            emit logval((sub_fc2650d8 * arg2 / 100 * 10^6));
            if not sub_fc2650d8 * arg2 / 100 * 10^6:
                if arg1 == 5:
                    if sub_8ffa56b1[arg1]:
                        return 10 * 10^6 * sub_fc2650d8 * arg2 / 100 * 10^6 / sub_8ffa56b1[arg1] / 10000, sub_fc2650d8 * arg2 / 100 * 10^6
                else:
                    if not sub_fc2650d8 * arg2 / 100 * 10^6:
                        return 0, sub_fc2650d8 * arg2 / 100 * 10^6
                    if sub_fc2650d8 * arg2 / 100 * 10^6:
                        if sub_fc2650d8 * arg2 / 100 * 10^6 * sub_8ffa56b1[arg1] / sub_fc2650d8 * arg2 / 100 * 10^6 == sub_8ffa56b1[arg1]:
                            return sub_fc2650d8 * arg2 / 100 * 10^6 * sub_8ffa56b1[arg1], sub_fc2650d8 * arg2 / 100 * 10^6
            else:
                if sub_fc2650d8 * arg2 / 100 * 10^6:
                    if sub_fc2650d8 * arg2 / 100 * 10^6 * sub_8ffa56b1[arg1] / sub_fc2650d8 * arg2 / 100 * 10^6 == sub_8ffa56b1[arg1]:
                        if arg1 == 5:
                            if sub_8ffa56b1[arg1]:
                                return 10 * 10^6 * sub_fc2650d8 * arg2 / 100 * 10^6 / sub_8ffa56b1[arg1] / 10000, sub_fc2650d8 * arg2 / 100 * 10^6
                        else:
                            if not sub_fc2650d8 * arg2 / 100 * 10^6:
                                return 0, sub_fc2650d8 * arg2 / 100 * 10^6
                            if sub_fc2650d8 * arg2 / 100 * 10^6:
                                if sub_fc2650d8 * arg2 / 100 * 10^6 * sub_8ffa56b1[arg1] / sub_fc2650d8 * arg2 / 100 * 10^6 == sub_8ffa56b1[arg1]:
                                    return sub_fc2650d8 * arg2 / 100 * 10^6 * sub_8ffa56b1[arg1], sub_fc2650d8 * arg2 / 100 * 10^6
    revert
}



}
