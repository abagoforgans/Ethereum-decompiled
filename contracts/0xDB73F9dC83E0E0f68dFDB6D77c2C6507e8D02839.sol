contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 992]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_89527595;
uint256 remunerationBalance;
uint256 sub_7617b2e3;
uint256 sub_69986768;
uint256 state;

function remunerationBalance() {
    return remunerationBalance
}

function sub_69986768(?) {
    return sub_69986768
}

function sub_7617b2e3(?) {
    return sub_7617b2e3
}

function sub_89527595(?) {
    return sub_89527595
}

function owner() {
    return owner
}

function state() {
    return state
}

function sayGoodbye() {
    if owner != msg.sender:
    selfdestruct(0)
}

function _fallback() payable {
    revert
}

function sub_aac15ad1(?) {
    state = arg1
}

function sub_f30baf31(?) {
    return (arg1 - (arg1 / 10))
}

function sub_eb9a238a(?) {
    return 9 * arg1 / 100, arg1 / 100
}

function sub_822db559(?) {
    remunerationBalance = 0
    sub_7617b2e3 = 0
    sub_89527595 = arg1
    sub_69986768 = 0
}

function sub_e14231f2(?) {
    if state != 0:
        if state != 1:
            emit StatEventI(string rg1, uint256 rg2):
                            64,
                            0,
                            11,
                            'ico-checkup',
        else:
            if sub_7617b2e3:
                if sub_7617b2e3 != 1:
                    emit StatEventI(string rg1, uint256 rg2):
                                    64,
                                    0,
                                    11,
                                    'ico-checkup',
                else:
                    sub_7617b2e3 = 2
                    remunerationBalance = remunerationBalance + sub_89527595 - (sub_89527595 / 10)
                    emit StatEventI(Array(len=11, data='ico-checkup'), 8);
            else:
                sub_7617b2e3 = 1
                remunerationBalance = 9 * sub_89527595 / 100
                sub_69986768 = sub_89527595 / 100
                if sub_7617b2e3 != 1:
                    emit StatEventI(Array(len=11, data='ico-checkup'), 4);
                else:
                    sub_7617b2e3 = 2
                    remunerationBalance = remunerationBalance + sub_89527595 - (sub_89527595 / 10)
                    emit StatEventI(Array(len=11, data='ico-checkup'), 12);
    else:
        if sub_7617b2e3:
            if state != 1:
                emit StatEventI(string rg1, uint256 rg2):
                                64,
                                0,
                                11,
                                'ico-checkup',
            else:
                if sub_7617b2e3:
                    if sub_7617b2e3 != 1:
                        emit StatEventI(string rg1, uint256 rg2):
                                        64,
                                        0,
                                        11,
                                        'ico-checkup',
                    else:
                        sub_7617b2e3 = 2
                        remunerationBalance = remunerationBalance + sub_89527595 - (sub_89527595 / 10)
                        emit StatEventI(Array(len=11, data='ico-checkup'), 8);
                else:
                    sub_7617b2e3 = 1
                    remunerationBalance = 9 * sub_89527595 / 100
                    sub_69986768 = sub_89527595 / 100
                    if sub_7617b2e3 != 1:
                        emit StatEventI(Array(len=11, data='ico-checkup'), 4);
                    else:
                        sub_7617b2e3 = 2
                        remunerationBalance = remunerationBalance + sub_89527595 - (sub_89527595 / 10)
                        emit StatEventI(Array(len=11, data='ico-checkup'), 12);
        else:
            sub_7617b2e3 = 1
            remunerationBalance = 9 * sub_89527595 / 100
            sub_69986768 = sub_89527595 / 100
            if state != 1:
                emit StatEventI(Array(len=11, data='ico-checkup'), 1);
            else:
                if sub_7617b2e3:
                    if sub_7617b2e3 != 1:
                        emit StatEventI(Array(len=11, data='ico-checkup'), 1);
                    else:
                        sub_7617b2e3 = 2
                        remunerationBalance = remunerationBalance + sub_89527595 - (sub_89527595 / 10)
                        emit StatEventI(Array(len=11, data='ico-checkup'), 9);
                else:
                    sub_7617b2e3 = 1
                    remunerationBalance = 9 * sub_89527595 / 100
                    sub_69986768 = sub_89527595 / 100
                    if sub_7617b2e3 != 1:
                        emit StatEventI(Array(len=11, data='ico-checkup'), 5);
                    else:
                        sub_7617b2e3 = 2
                        remunerationBalance = remunerationBalance + sub_89527595 - (sub_89527595 / 10)
                        emit StatEventI(Array(len=11, data='ico-checkup'), 13);
}



}
