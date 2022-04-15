contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 150
    stor4 = 418348 * 3600
    stor5 = 419092 * 3600
    stor6 = 0
    stor7 = 6600000 * 10^18
    require not msg.value
    stor0 = msg.sender
    return code.data[128 len 1789]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 oneEtherIsHowMuchFST;
uint256 startTime;
uint256 endTime;
uint256 soldTokenValue;
uint256 preSaleHardCap;

function preSaleHardCap() {
    return preSaleHardCap
}

function soldTokenValue() {
    return soldTokenValue
}

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function oneEtherIsHowMuchFST() {
    return oneEtherIsHowMuchFST
}

function _fallback() {
  stop
}

function setFSTAddress(address arg1) {
    require stor0 == msg.sender
    stor1 = arg1
    return 1
}

function setFSTKCentral(address arg1) {
    require stor0 == msg.sender
    stor2 = arg1
    return 1
}

function transferOut(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function buyFunderSmartToken(string arg1, string arg2) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require stor1
    require stor2
    require msg.value >= 10^18
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require soldTokenValue <= preSaleHardCap
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != 0xde7683d6497212fbd59b6a6f902a01c91a09d9a070bba7506dcc0b309b358eed:
        if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != 0x65b236bfb931f493eb9e6f3db8d461f1f547f2f3a19e33a7aeb24c7e297c926a:
            if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != 0x274125681e11c33f71574f123a20cfd59ed25e64d634078679014fa3a872575c:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, msg.value * oneEtherIsHowMuchFST
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, msg.value * oneEtherIsHowMuchFST);
                soldTokenValue += msg.value * oneEtherIsHowMuchFST
            else:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, 125 * msg.value * oneEtherIsHowMuchFST / 100
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, 125 * msg.value * oneEtherIsHowMuchFST / 100);
                soldTokenValue += 125 * msg.value * oneEtherIsHowMuchFST / 100
        else:
            if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != 0x274125681e11c33f71574f123a20cfd59ed25e64d634078679014fa3a872575c:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, 130 * msg.value * oneEtherIsHowMuchFST / 100
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, 130 * msg.value * oneEtherIsHowMuchFST / 100);
                soldTokenValue += 130 * msg.value * oneEtherIsHowMuchFST / 100
            else:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, 125 * 130 * msg.value * oneEtherIsHowMuchFST / 100 / 100
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, 125 * 130 * msg.value * oneEtherIsHowMuchFST / 100 / 100);
                soldTokenValue += 125 * 130 * msg.value * oneEtherIsHowMuchFST / 100 / 100
    else:
        if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != 0x65b236bfb931f493eb9e6f3db8d461f1f547f2f3a19e33a7aeb24c7e297c926a:
            if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != 0x274125681e11c33f71574f123a20cfd59ed25e64d634078679014fa3a872575c:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, 135 * msg.value * oneEtherIsHowMuchFST / 100
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, 135 * msg.value * oneEtherIsHowMuchFST / 100);
                soldTokenValue += 135 * msg.value * oneEtherIsHowMuchFST / 100
            else:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, 125 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, 125 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100);
                soldTokenValue += 125 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100
        else:
            if sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]) != 0x274125681e11c33f71574f123a20cfd59ed25e64d634078679014fa3a872575c:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, 130 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, 130 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100);
                soldTokenValue += 130 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100
            else:
                call stor1 with:
                   funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args stor2, msg.sender, 125 * 130 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100 / 100
                require 1 == bool(ext_call.success)
                emit BuyEvent(msg.sender, Array(len=arg1.length, data=arg1[all]), msg.value, 125 * 130 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100 / 100);
                soldTokenValue += 125 * 130 * 135 * msg.value * oneEtherIsHowMuchFST / 100 / 100 / 100
    return 1
}



}
