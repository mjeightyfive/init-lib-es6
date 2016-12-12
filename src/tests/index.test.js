import 'babel-polyfill';
import { expect } from 'chai';
import { sum } from '../index';

const { describe, it } = global;

describe('sum', () => {
    it('should add two numbers correctly', async() => {
        const result = await sum(2, 2);
        expect(result).to.be.equal(4);
    });
});
