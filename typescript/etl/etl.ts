function transform(scoreByLetter: { [key: string]: string[] }) {
  return Object.fromEntries(
    Object.entries(scoreByLetter)
      .map(([score, letters]) =>
        letters.map((l) => [l.toLocaleLowerCase(), parseInt(score)])
      )
      .flat()
  );
}

export default transform;
