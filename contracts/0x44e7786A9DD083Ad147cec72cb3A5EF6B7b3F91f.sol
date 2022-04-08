contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    stor2 = 0
    stor3 = 0
    return code.data[76 len 2299]
}



// =====================  Runtime code  =====================


const name = ''

const symbol = ''

const AUTHOR = 0x8e9342eb769c4039aaf33da739fb2fc8af9afdc1

const OX_ORG = 0x8f256c71a25344948777f333abd42f2b8f32be8e


address owner;
uint256 starttime;
uint8 stor2;
uint256 inCirculation;
mapping of uint256 oxen;
uint256 stor179A;

function starttime() {
    return starttime
}

function owner() {
    return owner
}

function oxen(address arg1) {
    return oxen[arg1]
}

function inCirculation() {
    return inCirculation
}

function expanded() {
    return bool(stor2)
}

function closedown() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function saleOn() {
    return (block.timestamp - starttime < 744 * 24 * 3600)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    if arg1 <= eth.balance(this.address):
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
}

function startSale() {
    require owner == msg.sender
    if not starttime:
        starttime = block.timestamp
        inCirculation = 200 * 10^6
        stor179A = 200 * 10^6
        emit Transfer(address rg1, address rg2, uint256 rg3):
                      200 * 10^6,
        emit 0x8f256c71: 200 * 10^6
        emit 0x8f256c71: 200 * 10^6
}

function bonus() {
    if block.timestamp - starttime < 24 * 3600:
        return 25
    if block.timestamp - starttime < 168 * 24 * 3600:
        return 20
    if block.timestamp - starttime < 336 * 24 * 3600:
        return 15
    if block.timestamp - starttime < 504 * 24 * 3600:
        return 10
    if block.timestamp - starttime >= 672 * 24 * 3600:
        return 0
    return 5
}

function expand() {
    if not stor2:
        if block.timestamp - starttime >= 744 * 24 * 3600:
            stor2 = 1
            stor179A = (1428571428 * inCirculation / 10^9) - inCirculation + stor179A
            inCirculation = 1428571428 * inCirculation / 10^9
            emit Transfer(((1428571428 * inCirculation / 10^9) - inCirculation), this.address, 0x8f256c71a25344948777f333abd42f2b8f32be8e);
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= oxen[address(msg.sender)]:
        if block.timestamp - starttime >= 744 * 24 * 3600:
            if not stor2:
                if block.timestamp - starttime >= 744 * 24 * 3600:
                    stor2 = 1
                    stor179A = (1428571428 * inCirculation / 10^9) - inCirculation + stor179A
                    inCirculation = 1428571428 * inCirculation / 10^9
                    emit Transfer(((1428571428 * inCirculation / 10^9) - inCirculation), this.address, 0x8f256c71a25344948777f333abd42f2b8f32be8e);
            oxen[address(msg.sender)] -= arg2
            oxen[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
}

function buyOx() payable {
    require block.timestamp - starttime < 744 * 24 * 3600
    require msg.value >= 10^17
    if block.timestamp - starttime < 24 * 3600:
        require inCirculation + (375 * msg.value / 10^17) <= 700 * 10^6
        inCirculation += 375 * msg.value / 10^17
        oxen[address(msg.sender)] += 375 * msg.value / 10^17
        emit Receipt(375 * msg.value / 10^17, msg.value, msg.sender);
    else:
        if block.timestamp - starttime < 168 * 24 * 3600:
            require inCirculation + (360 * msg.value / 10^17) <= 700 * 10^6
            inCirculation += 360 * msg.value / 10^17
            oxen[address(msg.sender)] += 360 * msg.value / 10^17
            emit Receipt(360 * msg.value / 10^17, msg.value, msg.sender);
        else:
            if block.timestamp - starttime < 336 * 24 * 3600:
                require inCirculation + (345 * msg.value / 10^17) <= 700 * 10^6
                inCirculation += 345 * msg.value / 10^17
                oxen[address(msg.sender)] += 345 * msg.value / 10^17
                emit Receipt(345 * msg.value / 10^17, msg.value, msg.sender);
            else:
                if block.timestamp - starttime < 504 * 24 * 3600:
                    require inCirculation + (330 * msg.value / 10^17) <= 700 * 10^6
                    inCirculation += 330 * msg.value / 10^17
                    oxen[address(msg.sender)] += 330 * msg.value / 10^17
                    emit Receipt(330 * msg.value / 10^17, msg.value, msg.sender);
                else:
                    if block.timestamp - starttime >= 672 * 24 * 3600:
                        require inCirculation + (300 * msg.value / 10^17) <= 700 * 10^6
                        inCirculation += 300 * msg.value / 10^17
                        oxen[address(msg.sender)] += 300 * msg.value / 10^17
                        emit Receipt(300 * msg.value / 10^17, msg.value, msg.sender);
                    else:
                        require inCirculation + (315 * msg.value / 10^17) <= 700 * 10^6
                        inCirculation += 315 * msg.value / 10^17
                        oxen[address(msg.sender)] += 315 * msg.value / 10^17
                        emit Receipt(315 * msg.value / 10^17, msg.value, msg.sender);
}



}
