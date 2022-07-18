contract main {




// =====================  Runtime code  =====================


const decimals = 0

const isStormBirdContract = 1

const getDecimals = 0


array of uint256 name;
array of uint256 state;
array of uint256 sub_7f9f7f3d;
array of uint256 sub_74196626;
array of uint256 building;
array of uint256 symbol;
array of uint256 sub_5697e49a;

function getLocality(uint256 arg1) {
    return sub_7f9f7f3d[0 len sub_7f9f7f3d.length]
}

function name() {
    return name[0 len name.length]
}

function getBuildingName(uint256 arg1) {
    return building[0 len building.length]
}

function getSymbol() {
    return symbol[0 len symbol.length]
}

function getStreet(uint256 arg1) {
    return sub_74196626[0 len sub_74196626.length]
}

function getState(uint256 arg1) {
    return state[0 len state.length]
}

function sub_5697e49a(?) {
    require arg1 < 5
    return sub_5697e49a[arg1]
}

function sub_74196626(?) {
    return sub_74196626[0 len sub_74196626.length]
}

function sub_7f9f7f3d(?) {
    return sub_7f9f7f3d[0 len sub_7f9f7f3d.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function state() {
    return state[0 len state.length]
}

function building() {
    return building[0 len building.length]
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) {
    idx = 256
    s = 6
    while 416 > idx + 32:
        mem[idx + 32] = state[s]
        idx = idx + 32
        s = s + 1
        continue 
    return sub_5697e49a.length, mem[288 len 128]
}



}
