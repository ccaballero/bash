#!/usr/bin/env node
/*
 * make a md5sum for a list of files
 * example: /usr/bin/ls | babel-checksum
 * babel-checksum.js <...files>
 */

import crypto from 'crypto';
import {resolve} from 'path';
import {readFile} from 'node:fs/promises';
import {stdin} from 'node:process';
import {createInterface} from 'node:readline/promises';

const rl=createInterface({
        input:stdin,
        crlfDelay:Infinity
    }),
    cwd=resolve('.');

for await(const line of rl){
    const file=resolve(cwd,line),
        data=await readFile(file),
        hash=crypto
        .createHash('md5')
        .update(data,'utf8')
        .digest('hex');

    console.log([
        hash,
        file.slice(cwd.length)
    ].join(' '));
}

